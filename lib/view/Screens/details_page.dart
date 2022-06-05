import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.42,
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.36,
                        width: MediaQuery.of(context).size.width * 0.50,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent.shade700,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: _weatherBlock(),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.36,
                        width: MediaQuery.of(context).size.width * 0.50,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent.shade700,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: _weatherBlock(),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.36,
                        width: MediaQuery.of(context).size.width * 0.50,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent.shade700,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: _weatherBlock(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: DotsIndicator(
                dotsCount: 4,
                position: 2,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.057,
                width: MediaQuery.of(context).size.width * 0.90,
                margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                    padding: const EdgeInsets.only(left: 15, top: 12),
                    child: const Text(
                      "Weather Now",
                      style: TextStyle(
                        fontSize: 16,
                        wordSpacing: 2,
                        letterSpacing: 1,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  width: MediaQuery.of(context).size.width * 0.56,
                  margin: const EdgeInsets.only(top: 15, left: 15),
                  decoration: BoxDecoration(
                    //backgroundBlendMode: BlendMode.darken,
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: _weatherNow(),
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  width: MediaQuery.of(context).size.width * 0.56,
                  margin: const EdgeInsets.only(top: 15, left: 15),
                  decoration: BoxDecoration(
                    //backgroundBlendMode: BlendMode.darken,
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: _weatherNow(),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.only(top: 15, left: 2),
        child: CircleAvatar(
          backgroundColor: Colors.lightBlueAccent.shade100,
          child: IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              onPressed: () {}),
        ),
      ),
      actions: [
        Container(
          height: 1,
          width: 70,
          margin: const EdgeInsets.only(top: 15, right: 1),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: const Center(
            child: Text(
              "Today",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15, right: 1),
          padding: const EdgeInsets.only(right: 0),
          child: CircleAvatar(
            backgroundColor: Colors.lightBlueAccent.shade100,
            child: Center(
              child: IconButton(
                  icon: const Icon(
                    Icons.watch_later_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
            ),
          ),
        ),
      ],
    );
  }

  _weatherBlock() {
    return Column(
      children: [
        Expanded(
            child: Container(
          padding: const EdgeInsets.all(10),
          child: const Icon(
            Icons.wb_sunny,
            color: Colors.white,
            size: 100,
          ),
        )),
        Expanded(
            child: Column(
          children: const [
            Text("Nairobi , Kenya",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text("26°", style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text("Sunny", style: TextStyle(fontSize: 20, color: Colors.white)),
          ],
        )),
      ],
    );
  }

  _weatherNow() {
    return Column(
      children: [
        Container(
          //color: Colors.red,
          //width: MediaQuery.of(context).size.width * 0.26,
          padding: const EdgeInsets.only(left: 17, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.lightBlueAccent.shade100,
                      child: const Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                      )),
                  Container(
                      // color: Colors.grey,
                      height: 37,
                      width: 65,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: const Center(
                          child: Text(
                        "Wind",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            letterSpacing: 0.7),
                      ))),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                width: 150,
                //margin: const EdgeInsets.only(top: 15, left: 15),
                child: _currentChange(),
              )
            ],
          ),
        ),
        Container(),
      ],
    );
  }

  _currentChange() {
    return Expanded(
      child: SfRadialGauge(axes: <RadialAxis>[
        RadialAxis(
            interval: 10,
            startAngle: 0,
            endAngle: 360,
            showTicks: false,
            showLabels: false,
            axisLineStyle: const AxisLineStyle(thickness: 20),
            pointers: const <GaugePointer>[
              RangePointer(
                  value: 73,
                  width: 20,
                  color: Color(0xFFFFCD60),
                  enableAnimation: true,
                  cornerStyle: CornerStyle.bothCurve)
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                  widget: Column(
                    children: <Widget>[
                      Container(
                          // width: 50.00,
                          // height: 50.00,
                          decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('images/sun.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 50,
                          ),
                          child: const Text('73°F',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25)),
                        ),
                      )
                    ],
                  ),
                  angle: 270,
                  positionFactor: 0.1)
            ])
      ]),
    );
  }
}
