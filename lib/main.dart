import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myweatherapp/Model/constant.dart';
import 'package:myweatherapp/controller/authcontroller.dart';
import 'package:myweatherapp/view/Auth/login_page.dart';
import 'package:myweatherapp/view/Auth/signup_page.dart';
import 'package:myweatherapp/view/Screens/start_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialization.then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
