import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseModule {
  @lazySingleton
  @preResolve
  Future<FirebaseApp> firebaseApp() => Firebase.initializeApp();
}
