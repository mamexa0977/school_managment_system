// import 'package:firebase_auth/firebase_auth.dart';

// import 'database.dart';

// class AuthService {
//   final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//   // login
//   Future loginWithUserNameandPassword(String email, String password) async {
//     try {
//       User user = (await firebaseAuth.signInWithEmailAndPassword(
//               email: email, password: password))
//           .user!;

//       if (user != null) {
//         return true;
//       }
//     } on FirebaseAuthException catch (e) {
//       return e.message;
//     }
//     // ...

//     Future registerUserWithEmailandPassword(
//         String fullName, String email, String password) async {
//       try {
//         User user = (await firebaseAuth.createUserWithEmailAndPassword(
//                 email: email, password: password))
//             .user!;

//         if (user != null) {
//           await DatabaseService(uid: user.uid).saveUserData(fullName, email);
//           await DatabaseService(uid: user.uid).addGroupMember();
//           return true;
//         }
//       } on FirebaseAuthException catch (e) {
//         return e.message;
//       }
//     }

//     // ...
//   }
// }
