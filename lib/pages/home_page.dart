import 'dart:async';

import 'package:analogic_clock_flutter/clock/clock_view.dart';
import 'package:analogic_clock_flutter/clock/text_time.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var hour = DateTime.now().hour;
  var minute = DateTime.now().minute;
  var second = DateTime.now().second;
  bool isFormatHour = false;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      hour = DateTime.now().hour;
      minute = DateTime.now().minute;
      second = DateTime.now().second;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 0.5,
                  color: Colors.grey,
                ),
                color: Colors.grey[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 4),
                    blurRadius: 15,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("24 hour clock"),
                  Switch(
                    value: isFormatHour,
                    onChanged: (value) {
                      setState(() => isFormatHour = value);
                    },
                  ),
                ],
              ),
            ),
          ),
          ClockView(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Hour"),
                  SizedBox(height: 10),
                  TextTime(
                    time: hour,
                  ),
                ],
              ),
              Column(
                children: [
                  Text("Minute"),
                  SizedBox(height: 10),
                  TextTime(
                    time: minute,
                  ),
                ],
              ),
              Column(
                children: [
                  Text("Second"),
                  SizedBox(height: 10),
                  TextTime(
                    time: second,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
