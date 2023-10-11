import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class TopleadWiget extends StatelessWidget {
  const TopleadWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: (MediaQuery.of(context).size.width - 100) / 2,
            child: DottedBorder(
              strokeWidth: 1,
              dashPattern: const [1, 1],
              color: Colors.black,
              child: const SizedBox(
                width: 100,
                height: 20,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '我的资产',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
