import 'package:flutter/material.dart';
import 'package:myweatherapp/view/Auth/login_page.dart';
import 'package:myweatherapp/view/Screens/details_page.dart';
import 'package:myweatherapp/view/Screens/home_page.dart';
import 'package:myweatherapp/view/Screens/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
