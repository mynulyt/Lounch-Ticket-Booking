import 'package:flutter/material.dart';

class CustomSeat extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String text;

  const CustomSeat({
    super.key,
    this.text = '',
    this.height = 32.0,
    this.width = 22.0,
    this.color = const Color(0xFF326EF2),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Color(0xFF7C8DB0),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
