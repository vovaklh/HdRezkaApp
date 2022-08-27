import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hdrezka_app/core/exceptions/local_exception.dart';
import 'package:hdrezka_app/data/datasources/remote/firebase/models/content_fb_model.dart';
import 'package:hdrezka_app/domain/converters/fb_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/entities/user_meta.dart';
import 'package:hdrezka_app/domain/services/auth_service.dart';
import 'package:hdrezka_app/domain/services/favorites_service.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseFavoritesService implements FavoritesService {
  final FirebaseFirestore firestore;
  final AuthService authService;
  final FbConverter<ContentFbModel, Content> contentFbConverter;

  final _favoritesSubject = BehaviorSubject<List<Content>>();

  late final StreamSubscription _userSubscription;

  late CollectionReference _favoritesRef;

  StreamSubscription? _favoritesSubscription;

  FirebaseFavoritesService({
    required this.firestore,
    required this.authService,
    required this.contentFbConverter,
  }) {
    _userSubscription = authService.userStream.listen(_onUserChanged);
  }

  @override
  Stream<List<Content>> get favoritesStream => _favoritesSubject.stream;

  void _onUserChanged(UserMeta? user) {
    if (user == null) {
      _favoritesSubscription?.cancel();
      _favoritesSubject
          .addError(LocalException(LocalError.signInToSeeFavorites));
    } else {
      _favoritesRef =
          firestore.collection("users").doc(user.uid).collection("favorites");
      _favoritesSubscription = _favoritesRef.snapshots().listen((snapshot) {
        final favorites = snapshot.docs.map((doc) {
          final map = doc.data() as Map<String, dynamic>;
          final contentFbModel = ContentFbModel.fromJson(map);
          return contentFbConverter.fbModelToEntity(contentFbModel);
        }).toList();
        _favoritesSubject.add(favorites);
      });
    }
  }

  @override
  Future<void> addToFavorites(Content content) async {
    if (authService.isLoggedIn) {
      final favoritesItem =
          await _favoritesRef.where("id", isEqualTo: content.id).limit(1).get();
      final contentFbModel = contentFbConverter.entityToFbModel(content);
      if (favoritesItem.docs.isEmpty) {
        await _favoritesRef.add(contentFbModel.toJson());
      } else {
        await favoritesItem.docs.first.reference
            .update(contentFbModel.toJson());
      }
    } else {
      throw LocalException(LocalError.signInToAddToFavorites);
    }
  }

  @override
  Future<void> removeFromFavorites(Content content) async {
    if (authService.isLoggedIn) {
      final favoritesItem =
          await _favoritesRef.where("id", isEqualTo: content.id).limit(1).get();
      if (favoritesItem.docs.isNotEmpty) {
        await favoritesItem.docs.first.reference.delete();
      }
    } else {
      throw LocalException(LocalError.signInToDeleteFromFavorites);
    }
  }

  @override
  Future<bool> isFavorite(int contentId) async {
    if (authService.isLoggedIn) {
      final favoritesItem =
          await _favoritesRef.where("id", isEqualTo: contentId).limit(1).get();
      return favoritesItem.docs.isNotEmpty;
    }
    return false;
  }

  @override
  Future<void> dispose() async {
    _favoritesSubscription?.cancel();
    _userSubscription.cancel();
    _favoritesSubject.close();
  }
}
