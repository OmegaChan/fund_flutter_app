import 'package:flutter/material.dart';
import './top_container_marquee.dart';
import './top_container_amount.dart';
import './top_container_lead.dart';
import 'top_container_panel.dart';
import '../../config/constant.dart';

class TopbgWiget extends StatelessWidget {
  const TopbgWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: topBgHeight,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: CustomPaint(
              painter: ShapePainter(height: topBgHeight),
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: TopMarqueeWiget()
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: 40,
            child: TopAmountWiget()
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: 180,
            child: TopleadWiget()
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: 220,
            child: TopPanelWiget()
          ),
        ],
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  final double height;

  ShapePainter({required this.height});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    
    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, height - 30)
      ..quadraticBezierTo(size.width / 2, height, 0, height - 30)
      ..close();

    canvas.drawPath(path, paint);
  }

  // 静态的图形不需要重新绘制
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}