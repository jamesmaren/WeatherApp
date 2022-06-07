import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  String profilePhoto;
  String email;
  //String uid;
  int? phone;

  User(
      {required this.name,
      required this.profilePhoto,
      required this.email,
      //  required this.uid,
      this.phone});

  Map<String, dynamic> toJson() => {
        "name": name,
        "profilePhoto": profilePhoto,
        "email": email,
//"uid": uid,
      };
  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      email: snapshot['email'],
      profilePhoto: snapshot['profilePhoto'],
      //   uid: snapshot['uid'],
      name: snapshot['name'],
      phone: snapshot['phone'],
    );
  }
}
