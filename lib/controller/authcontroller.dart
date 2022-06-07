import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:myweatherapp/Model/user.dart' as model;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myweatherapp/Model/constant.dart';
import 'package:myweatherapp/view/Auth/login_page.dart';
import 'package:myweatherapp/view/Auth/signup_page.dart';
import 'package:myweatherapp/view/Screens/home_page.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> firebaseUser;
  late Rx<File?> _pickedImage;
  File? get profilePhoto => _pickedImage.value;

  late Rx<GoogleSignInAccount?> googleSignInAccount;

  @override
  void onReady() {
    super.onReady();
    // auth is comning from the constants.dart file but it is basically FirebaseAuth.instance.
    // Since we have to use that many times I just made a constant file and declared there

    firebaseUser = Rx<User?>(auth.currentUser);
    googleSignInAccount = Rx<GoogleSignInAccount?>(googleSign.currentUser);

    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);

    googleSignInAccount.bindStream(googleSign.onCurrentUserChanged);
    ever(googleSignInAccount, _setInitialScreenGoogle);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(() => const LoginPage());
    } else {
      // if the user exists and logged in the the user is navigated to the Home Screen
      Get.offAll(() => const HomePage());
    }
  }

  _setInitialScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
    print(googleSignInAccount);
    if (googleSignInAccount == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(() => const signUp());
    } else {
      // if the user exists and logged in the the user is navigated to the Home Screen
      Get.offAll(() => HomePage());
    }
  }

  void pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      Get.snackbar("Profile Picture",
          "You have successfully selected your profile picture");
    }
    _pickedImage = Rx<File?>(File(pickedImage!.path));
  }

  Future<String> _uploadToStorage(File image) async {
    Reference ref =
        firebaseStorage.ref().child('profilePics').child(auth.currentUser!.uid);

    UploadTask uploadTask = ref.putFile(image);
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }

  void signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await googleSign.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        await auth
            .signInWithCredential(credential)
            .catchError((onErr) => print(onErr));
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      print(e.toString());
    }
  }

  // Future<void> registerUser(
  //     phone, String name, String email, String password, File? image) async {
  //   try {
  //     if (name.isNotEmpty &&
  //         email.isNotEmpty &&
  //         password.isNotEmpty &&
  //         image != null) {
  //       // save user to out auth and firebase firestore
  //       //UserCredential cred =
  //       await auth.createUserWithEmailAndPassword(
  //           email: email, password: password);
  //       String downloadUrl = await _uploadToStorage(image);
  //       model.User user = model.User(
  //         email: email,
  //         name: name,
  //         // uid: cred.user!.uid,
  //         profilePhoto: downloadUrl,
  //         phone: phone,
  //       );

  //       await firebaseFirestore.collection('users');
  //       //.doc(cred.user!.uid)
  //       //.set(user.toJson());
  //     } else {
  //       Get.snackbar(
  //         "Error creating Account",
  //         "please enter all the fields",
  //       );
  //     }
  //   } catch (e) {
  //     Get.snackbar(
  //       "Error creating Account",
  //       e.toString(),
  //     );
  //   }
  // }

  Future<void> register(
      phone, String email, String password, String name, File? image) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      String downloadUrl = await _uploadToStorage(image!);
      model.User user = model.User(
        email: email,
        name: name,
        profilePhoto: downloadUrl,
        phone: phone,
      );

      await firebaseFirestore.collection('users');
    } catch (firebaseAuthException) {}
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (firebaseAuthException) {}
  }

  void signOut() async {
    await auth.signOut();
  }
}


//generate connection with firebase
