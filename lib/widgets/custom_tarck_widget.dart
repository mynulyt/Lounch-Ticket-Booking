import 'package:flutter/material.dart';

class CustomTrackWidget extends StatelessWidget {
  final String startTime;
  final String endTime;
  final Color StColor;
  final Color EndColor;

  const CustomTrackWidget({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.StColor,
    required this.EndColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          startTime,
          style: TextStyle(
            color: StColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          endTime,
          style: TextStyle(
            color: EndColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
