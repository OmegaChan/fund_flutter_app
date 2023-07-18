import 'package:flutter/material.dart';

class TopleadWiget extends StatelessWidget {
  const TopleadWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 30,
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          color: Colors.pink,
        ),
        child: const Text(
          '我的zc >',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}