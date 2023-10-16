// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class DatabaseService {
//   final String? uid;
//   DatabaseService({this.uid});

//   final CollectionReference userCollection =
//       FirebaseFirestore.instance.collection("users");
//   final CollectionReference groupCollection =
//       FirebaseFirestore.instance.collection("groups");

//   Future<void> saveUserData(String fullName, String email) async {
//     await userCollection.doc(uid).set({
//       "fullName": fullName,
//       "email": email,
//       // Additional user data
//     });
//   }

//   Future<void> addGroupMember() async {
//     await groupCollection.doc("commonGroup").update({
//       "members": FieldValue.arrayUnion([uid]),
//     });
//   }
// }
