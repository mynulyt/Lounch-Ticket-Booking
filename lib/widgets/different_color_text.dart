import 'package:flutter/material.dart';

class ColoredDaysWidget extends StatelessWidget {
  const ColoredDaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: "S ",
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
          TextSpan(
              text: "M ",
              style: TextStyle(
                  color: Color(0xFF25457C),
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
          TextSpan(
              text: "T ",
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
          TextSpan(
              text: "W ",
              style: TextStyle(
                  color: Color(0xFF25457C),
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
          TextSpan(
              text: "T ",
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
          TextSpan(
              text: "F ",
              style: TextStyle(
                  color: Color(0xFF25457C),
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
          TextSpan(
              text: "S",
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
