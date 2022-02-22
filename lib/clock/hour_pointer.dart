import 'dart:math';

import 'package:flutter/material.dart';

class HourPointer extends StatelessWidget {
  const HourPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final hour = DateTime.now().hour.toDouble();
    final angle = (-pi * (hour / -60)) * 2;
    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
        angle: angle,
        child: Transform.translate(
          offset: Offset(0, 20),
          child: Center(
            child: Container(
              height: height * .06,
              width: 4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
