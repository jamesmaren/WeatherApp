import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myweatherapp/Model/constant.dart';
import 'package:myweatherapp/view/Auth/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.19,
          width: MediaQuery.of(context).size.width * 0.86,
          margin: const EdgeInsets.only(top: 75),
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
          "Login",
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 1,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
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
        Container(
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
            controller: _passwordController,
            obscureText: _isObscure,
            decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: const Icon(
                  Icons.password,
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
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    })),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 18.0, top: 3),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
            onPressed: () async {
              authController.login(_emailController.text.trim(),
                  _passwordController.text.trim());
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
              "Login",
              style: TextStyle(
                fontSize: 23,
                letterSpacing: 1,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
        const SizedBox(
          height: 13,
        ),
        Container(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
            children: [
              const Text(
                "Don/'t have an account",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              TextButton(
                  onPressed: () => Get.to(() => const signUp()),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 18.0, top: 3),
              child: Text(
                "---Or login with ---",
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 13,
        ),
        Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    //  authController.signInWithGoogle();
                  },
                  child: const Image(
                    image: AssetImage('images/gmail.png'),
                    // height: 50,
                    // width: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            // Column(
            //   children: const [
            //     Image(
            //       image: AssetImage('images/facebook.png'),
            //       // height: 50,
            //       // width: 50,
            //     ),
            //   ],
            // ),
          ],
        )
      ]),
    ));
  }
}
