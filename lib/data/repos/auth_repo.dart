import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user_model.dart';

class AuthRepository {
  AuthRepository._();

  static final AuthRepository instance =
      AuthRepository._();

  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>>
      get _users =>
          _firestore.collection('users');

  Future<bool> userExists(String uid) async {
    final document =
        await _users.doc(uid).get();

    return document.exists;
  }

  Future<void> saveUser(
    UserModel user,
  ) async {
    await _users.doc(user.uid).set(
          user.toMap(),
        );
  }

  Future<UserModel?> getUser(
    String uid,
  ) async {
    final document =
        await _users.doc(uid).get();

    if (!document.exists ||
        document.data() == null) {
      return null;
    }

    return UserModel.fromMap(
      document.data()!,
    );
  }
}