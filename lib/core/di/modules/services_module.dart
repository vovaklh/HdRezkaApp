import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hdrezka_app/data/services/firebase_auth_service.dart';
import 'package:hdrezka_app/domain/services/auth_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServicesModule {
  @lazySingleton
  @preResolve
  Future<AuthService> authService(
    FirebaseAuth auth,
    FirebaseFirestore firestore,
  ) async {
    final service = FirebaseAuthService(auth, firestore);
    await service.init();

    return service;
  }
}
