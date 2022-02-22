import 'package:flutter/material.dart';

class TextTime extends StatelessWidget {
  final int time;

  const TextTime({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Center(
        child: Text(
          time.toString(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 0.5,
          color: Colors.grey,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 2),
            blurRadius: 15,
          )
        ],
        color: Colors.blueGrey[800],
      ),
    );
  }
}
