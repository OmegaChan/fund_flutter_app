import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class TopMarqueeWiget extends StatelessWidget {
  const TopMarqueeWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 30,
      color: const Color.fromRGBO(121, 187, 255, 1.0),
      child: Marquee(
        text: '基金牛牛播放牛牛牛牛牛牛～～～～～～～～～',
        style: const TextStyle(fontSize: 16, color:  Colors.black),
        scrollAxis: Axis.horizontal,
        // 垂直居中
        crossAxisAlignment: CrossAxisAlignment.center,
        blankSpace: 20.0,
        velocity: 100.0,
        pauseAfterRound: const Duration(seconds: 1),
        startPadding: 10.0,
        accelerationDuration:  const Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: const Duration(microseconds: 500),
        decelerationCurve: Curves.easeOut,
      ),
    );
  }
}