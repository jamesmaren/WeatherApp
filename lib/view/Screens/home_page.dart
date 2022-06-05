import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
      toolbarHeight: 120,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Hello Adrian ",
            style: TextStyle(
              fontSize: 23,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Discover the weather",
            style: TextStyle(
              fontSize: 20,
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
            onTap: () {},
            child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: const Icon(Icons.menu_rounded,
                    color: Colors.black, size: 26.0)),
          ),
        ),
      ],
    );
  }

  _weatherStack() {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: const EdgeInsets.only(top: 12, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Current Location",
                style: TextStyle(
                  wordSpacing: 3,
                  letterSpacing: 0.6,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Dhaka",
                style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Thunder",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(
                  Icons.cloud_sharp,
                  color: Colors.white,
                  size: 80,
                ),
                Text("20°C",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
