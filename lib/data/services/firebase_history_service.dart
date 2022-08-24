import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hdrezka_app/core/exceptions/local_exception.dart';
import 'package:hdrezka_app/data/datasources/remote/firebase/models/content_fb_model.dart';
import 'package:hdrezka_app/domain/converters/fb_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/entities/user_meta.dart';
import 'package:hdrezka_app/domain/services/auth_service.dart';
import 'package:hdrezka_app/domain/services/history_service.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseHistoryService implements HistoryService {
  final FirebaseFirestore firestore;
  final AuthService authService;
  final FbConverter<ContentFbModel, Content> contentFbConverter;

  final _historySubject = BehaviorSubject<List<Content>>();

  late final StreamSubscription _userSubscription;

  late CollectionReference _historyRef;

  StreamSubscription? _historySubscription;

  FirebaseHistoryService({
    required this.firestore,
    required this.authService,
    required this.contentFbConverter,
  }) {
    _userSubscription = authService.userStream.listen(_onUserChanged);
  }

  @override
  Stream<List<Content>> get historyStream => _historySubject.stream;

  void _onUserChanged(UserMeta? user) {
    if (user == null) {
      _historySubscription?.cancel();
      _historySubject.addError(LocalException(LocalError.signInToSeeHistory));
    } else {
      _historyRef =
          firestore.collection("users").doc(user.uid).collection("history");
      _historySubscription = _historyRef.snapshots().listen((snapshot) {
        final history = snapshot.docs.map((doc) {
          final map = doc.data() as Map<String, dynamic>;
          final contentFbModel = ContentFbModel.fromJson(map);
          return contentFbConverter.fbModelToEntity(contentFbModel);
        }).toList();
        _historySubject.add(history);
      });
    }
  }

  @override
  Future<void> addToHistory(Content content) async {
    if (authService.isLoggedIn) {
      final historyItem =
          await _historyRef.where("id", isEqualTo: content.id).limit(1).get();
      final contentFbModel = contentFbConverter.entityToFbModel(content);
      if (historyItem.docs.isEmpty) {
        await _historyRef.add(contentFbModel.toJson());
      } else {
        await historyItem.docs.first.reference.set(contentFbModel.toJson());
      }
    }
  }

  @override
  Future<void> dispose() async {
    _historySubscription?.cancel();
    _userSubscription.cancel();
    _historySubject.close();
  }
}
