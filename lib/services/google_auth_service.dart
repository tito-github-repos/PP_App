import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService {
  GoogleAuthService._();

  static final GoogleAuthService instance =
      GoogleAuthService._();

  final FirebaseAuth _auth =
      FirebaseAuth.instance;

  final GoogleSignIn _googleSignIn =
      GoogleSignIn.instance;

  Future<UserCredential?> signIn() async {
    await _googleSignIn.initialize();

    final GoogleSignInAccount account =
        await _googleSignIn.authenticate();

    final GoogleSignInAuthentication
        authentication =
        account.authentication;

    final credential =
        GoogleAuthProvider.credential(
      idToken: authentication.idToken,
    );

    return await _auth.signInWithCredential(
      credential,
    );
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}