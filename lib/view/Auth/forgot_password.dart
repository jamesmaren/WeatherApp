import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myweatherapp/Model/constant.dart';
import 'package:myweatherapp/view/Auth/login_page.dart';

class forgotPassword extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  forgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.17,
            width: MediaQuery.of(context).size.width * 0.86,
            margin: const EdgeInsets.only(top: 95),
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('images/wind.png'),
                //fit: BoxFit.cover,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Forgot Password",
            style: TextStyle(
              fontSize: 30,
              letterSpacing: 1,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width * 0.89,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: const Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.lightBlueAccent,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.0)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () async {
                authController.resetPassword(
                  email: _emailController.text.trim(),
                );
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                shadowColor: MaterialStateProperty.all(Colors.blueGrey),
                elevation: MaterialStateProperty.all(15),
                padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                minimumSize: MaterialStateProperty.all(const Size(195, 50)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 23,
                  letterSpacing: 1,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () => Get.to(() => const LoginPage()),
                  child: const Text(
                    "Back to login",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
