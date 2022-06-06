//import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myweatherapp/view/Auth/signup_page.dart';
import 'package:myweatherapp/view/Screens/home_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent.shade100,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('images/sun.png'),
              //fit: BoxFit.cover,
              fit: BoxFit.contain,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 360, 10, 10),
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 2),
                      child: const Center(
                        child: Text(
                          "..",
                          style: TextStyle(fontSize: 60, color: Colors.blue),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 30, top: 5, bottom: 5, right: 10),
                      child: const Center(
                        child: Text(
                          "Explore Global Map Of Wind, Weather and Ocean Conditions ",
                          style: TextStyle(
                            fontSize: 23,
                            wordSpacing: 3,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 35, top: 5, bottom: 5, right: 35),
                      child: const Center(
                        child: Text(
                          "Planning your trip become more easier with ideate weather app you can instantly see the weather conditions of any place in the world",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                            //fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 45),
                      child: Center(
                        child: TextButton(
                          onPressed: () => Get.to(() => const HomePage()),
                          style: TextButton.styleFrom(
                            fixedSize: const Size(200, 50),
                            backgroundColor: Colors.blue,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          const Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
