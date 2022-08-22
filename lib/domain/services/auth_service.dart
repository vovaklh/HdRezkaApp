import 'package:hdrezka_app/domain/entities/user_meta.dart';

abstract class AuthService {
  Stream<UserMeta?> get userStream;
  UserMeta? get currentUser;
  bool get isLoggedIn;

  Future<UserMeta> signIn(String email, String password);

  Future<UserMeta> signUp(String email, String password);

  Future<void> signOut();

  Future<void> dispose();
}
