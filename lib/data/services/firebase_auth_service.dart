import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hdrezka_app/domain/entities/user_meta.dart';
import 'package:hdrezka_app/domain/services/auth_service.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseAuthService implements AuthService {
  static const _userCollection = 'users';

  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  late final StreamSubscription<User?> _userSubscription;
  final _userSubject = BehaviorSubject<UserMeta?>();

  @override
  Stream<UserMeta?> get userStream => _userSubject.stream;
  @override
  UserMeta? get currentUser => _userSubject.valueOrNull;
  @override
  bool get isLoggedIn => currentUser != null;

  FirebaseAuthService(this.auth, this.firestore);

  Future<void> init() async {
    await _onUserChanged(auth.currentUser);
    _userSubscription = auth.userChanges().listen(_onUserChanged);
  }

  Future<void> _onUserChanged(User? authUser) async {
    final user = authUser == null ? null : UserMeta.fromFirebaseUser(authUser);
    _userSubject.add(user);
  }

  @override
  Future<UserMeta> signIn(String email, String password) async {
    final signInResult = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return UserMeta.fromFirebaseUser(signInResult.user!);
  }

  @override
  Future<UserMeta> signUp(String email, String password) async {
    final registerResult = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = registerResult.user!;
    firestore.collection(_userCollection).doc(user.uid).set({
      'email': email,
    });
    return UserMeta.fromFirebaseUser(user);
  }

  @override
  Future<void> signOut() async {
    await auth.signOut();
    await _onUserChanged(null);
  }

  @override
  Future<void> dispose() async {
    await _userSubscription.cancel();
    await _userSubject.close();
  }
}
