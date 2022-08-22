import 'package:firebase_auth/firebase_auth.dart';

class UserMeta {
  final String uid;
  final String email;

  UserMeta({
    required this.uid,
    this.email = '',
  });

  factory UserMeta.fromFirebaseUser(User user) {
    return UserMeta(
      uid: user.uid,
      email: user.email ?? '',
    );
  }
}
