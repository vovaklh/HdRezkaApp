import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hdrezka_app/data/datasources/remote/firebase/models/content_fb_model.dart';
import 'package:hdrezka_app/data/services/firebase_auth_service.dart';
import 'package:hdrezka_app/data/services/firebase_favorites_service.dart';
import 'package:hdrezka_app/data/services/firebase_history_service.dart';
import 'package:hdrezka_app/domain/converters/fb_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/services/auth_service.dart';
import 'package:hdrezka_app/domain/services/favorites_service.dart';
import 'package:hdrezka_app/domain/services/history_service.dart';
import 'package:injectable/injectable.dart';

FutureOr disposeAuthService(AuthService instance) => instance.dispose();
FutureOr disposeHistoryService(HistoryService instance) => instance.dispose();
FutureOr disposeFavoritesService(FavoritesService instance) =>
    instance.dispose();

@module
abstract class ServicesModule {
  @LazySingleton(dispose: disposeAuthService)
  @preResolve
  Future<AuthService> authService(
    FirebaseAuth auth,
    FirebaseFirestore firestore,
  ) async {
    final service = FirebaseAuthService(auth, firestore);
    await service.init();

    return service;
  }

  @LazySingleton(dispose: disposeHistoryService)
  HistoryService historyService(
    FirebaseFirestore firestore,
    AuthService authService,
    FbConverter<ContentFbModel, Content> contentFbConverter,
  ) {
    return FirebaseHistoryService(
      firestore: firestore,
      authService: authService,
      contentFbConverter: contentFbConverter,
    );
  }

  @LazySingleton(dispose: disposeFavoritesService)
  FavoritesService favoritesService(
    FirebaseFirestore firestore,
    AuthService authService,
    FbConverter<ContentFbModel, Content> contentFbConverter,
  ) {
    return FirebaseFavoritesService(
      firestore: firestore,
      authService: authService,
      contentFbConverter: contentFbConverter,
    );
  }
}
