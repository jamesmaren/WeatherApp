import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myweatherapp/Model/constant.dart';
import 'package:myweatherapp/Model/weather_model.dart';
import 'package:myweatherapp/Model/weather_model.dart';
import 'package:myweatherapp/controller/weather_service.dart';
import 'package:myweatherapp/view/Screens/details_page.dart';
import 'package:http/http.dart' as http;

enum Options { profile, upload, copy, logout }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weather? weathers;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    weathers = await RemoteService2().getWeather()

        // as List<Weather>?

        ;

    if (weathers != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  var _popupMenuItemIndex = 0;
  Color _changeColorAccordingToMenuItem = Colors.red;
  var appBarHeight = AppBar().preferredSize.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width * 0.86,
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent.shade100,
            borderRadius: BorderRadius.circular(30),
          ),
          child: _weatherStack(),
        ),
        Container(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Center(
                  child: Text(
                    "..",
                    style: TextStyle(fontSize: 50, color: Colors.blue),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: const Text(
                    "Around The World",
                    style: TextStyle(
                      fontSize: 17,
                      wordSpacing: 2,
                      letterSpacing: 1,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width * 0.86,
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent.shade100,
            borderRadius: BorderRadius.circular(30),
          ),
          child: _weatherStack(),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width * 0.86,
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent.shade100,
            borderRadius: BorderRadius.circular(30),
          ),
          child: _weatherStack(),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width * 0.86,
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent.shade100,
            borderRadius: BorderRadius.circular(30),
          ),
          child: _weatherStack(),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width * 0.86,
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent.shade100,
            borderRadius: BorderRadius.circular(30),
          ),
          child: _weatherStack(),
        ),
      ])),
    );
  }

  _appBar() {
    return AppBar(
      toolbarHeight: 140,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Hello Adrian ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Discover the weather",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(
                  color: Colors.black,
                  Icons.search,
                  size: 26.0,
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
              authController.signOut();
            },
            child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: const Icon(Icons.menu_rounded,
                    color: Colors.black, size: 26.0)),
          ),
        ),
        PopupMenuButton(
          onSelected: (value) {
            _onMenuItemSelected(value as int);
          },
          offset: Offset(0.0, appBarHeight),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
          ),
          itemBuilder: (ctx) => [
            _buildPopupMenuItem(
              'Profile',
              Icons.person,
              Options.profile.index,
            ),
            _buildPopupMenuItem('Upload', Icons.upload, Options.upload.index),
            _buildPopupMenuItem('Copy', Icons.copy, Options.copy.index),
            _buildPopupMenuItem(
                'Log Out', Icons.exit_to_app, Options.logout.index),
          ],
        )
      ],
    );
  }

  _weatherStack() {
    return Row(children: [
      Expanded(
        child: Container(
          padding: const EdgeInsets.only(top: 12, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                //  weathers != null ? weathers!.wind!.speed.toString() : "fun",

                " Current Location",

                style: TextStyle(
                  wordSpacing: 3,
                  letterSpacing: 0.6,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                weathers != null ? weathers!.sys!.country.toString() : "fun",

                //  "Loading...",
                style: const TextStyle(
                    fontSize: 25,
                    letterSpacing: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Clouds",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),

      Expanded(
        child: Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.cloud_sharp,
                color: Colors.white,
                size: 80,
              ),
              Text(
                  weathers != null
                      ? weathers!.main!.temp.toString() + " \u2109"
                      : "fun",

                  //"loading...",
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      )
      //)
    ]);

    // ),
  }

  PopupMenuItem _buildPopupMenuItem(
      String title, IconData iconData, int position) {
    return PopupMenuItem(
      value: position,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            iconData,
            color: Colors.black,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  _onMenuItemSelected(int value) {
    setState(() {
      _popupMenuItemIndex = value;
    });

    if (value == Options.profile.index) {
      Get.to(() => const DetailsPage());
    } else if (value == Options.upload.index) {
      _changeColorAccordingToMenuItem = Colors.green;
    } else if (value == Options.logout.index) {
      authController.signOut();
    } else {
      _changeColorAccordingToMenuItem = Colors.purple;
    }
  }
}
