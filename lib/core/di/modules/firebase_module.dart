import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hdrezka_app/firebase_options.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseModule {
  @lazySingleton
  @preResolve
  Future<FirebaseApp> firebaseApp() =>
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @lazySingleton
  FirebaseAuth firebaseAuth(FirebaseApp app) =>
      FirebaseAuth.instanceFor(app: app);

  @lazySingleton
  FirebaseFirestore firebaseFirestore(FirebaseApp app) =>
      FirebaseFirestore.instanceFor(app: app);
}
