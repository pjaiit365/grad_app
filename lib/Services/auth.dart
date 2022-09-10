import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
}

//   Future signInAnon() async {
//   //   try {
//   //     AuthResult result await _auth.signInWithEmailAndPassword(email: email, password: password);
//   //   } catch (e) {
//   //     print(e.toString());
//   //     return null;
//   //   }
//   // }
// }
