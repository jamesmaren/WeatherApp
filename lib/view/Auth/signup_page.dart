import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myweatherapp/Model/constant.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myweatherapp/view/Auth/login_page.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    bool isObscure = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.17,
            //   width: MediaQuery.of(context).size.width * 0.86,
            //   margin: const EdgeInsets.only(top: 45),
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //       alignment: Alignment.topCenter,
            //       image: AssetImage('images/wind.png'),
            //       //fit: BoxFit.cover,
            //       fit: BoxFit.contain,
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 55,
            ),
            const Text(
              "Sign Up",
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
            Stack(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/46225838?v=4"),
                  backgroundColor: Colors.grey.shade300,
                ),
                Positioned(
                  left: 80,
                  bottom: -10,
                  child: IconButton(
                    onPressed: () {
                      authController.pickImage();
                    },
                    icon: const Icon(Icons.add_a_photo),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
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
                        color: Colors.grey.withOpacity(0.4))
                  ]),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Name",
                    prefixIcon: const Icon(
                      Icons.person,
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
              height: 13,
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
                controller: emailController,
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
            const SizedBox(height: 13),
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
                controller: phoneController,
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    prefixIcon: const Icon(
                      Icons.phone,
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
              height: 13,
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
                        color: Colors.grey.withOpacity(0.3))
                  ]),
              child: TextField(
                controller: passwordController,
                obscureText: isObscure,
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
                          isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        })),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width * 0.89,
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(30),
            //       boxShadow: [
            //         BoxShadow(
            //             blurRadius: 10,
            //             spreadRadius: 7,
            //             offset: const Offset(1, 1),
            //             color: Colors.grey.withOpacity(0.3))
            //       ]),
            //   child: TextField(
            //     controller: passwordController,
            //     obscureText: isObscure,
            //     decoration: InputDecoration(
            //         hintText: "Confirm Password",
            //         prefixIcon: const Icon(
            //           Icons.password,
            //           color: Colors.lightBlueAccent,
            //         ),
            //         focusedBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(30),
            //             borderSide:
            //                 const BorderSide(color: Colors.white, width: 1.0)),
            //         enabledBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(30),
            //             borderSide:
            //                 const BorderSide(color: Colors.white, width: 1.0)),
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(30),
            //         ),
            //         suffixIcon: IconButton(
            //             icon: Icon(
            //               isObscure ? Icons.visibility : Icons.visibility_off,
            //             ),
            //             onPressed: () {
            //               setState(() {
            //                 isObscure = !isObscure;
            //               });
            //             })),
            //   ),
            // ),
            const SizedBox(
              height: 13,
            ),
            TextButton(
                onPressed: () async {
                  authController.register(
                      emailController.text,
                      // emailController.toString,
                      passwordController.text,
                      nameController.text,
                      phoneController.text,
                      authController.profilePhoto);
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
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 23,
                    letterSpacing: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  const Text(
                    "Already have an account ? ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                      onPressed: () => Get.to(() => LoginPage()),
                      child: const Text(
                        "Login here",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 18.0, top: 3),
                  child: Text(
                    "---Or Sign Up with ---",
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
              height: 7,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Image(
                      image: AssetImage('images/gmail2.png'),
                      // height: 50,
                      // width: 50,
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
          ],
        ),
      ),
    );
  }
}
