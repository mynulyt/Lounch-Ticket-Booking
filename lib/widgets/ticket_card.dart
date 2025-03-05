import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  final String startTime;
  final String endText;

  final String DutTime;
  final String startText;
  final String endTime;
  final Color startColor;

  final Color DuTimeColor;
  final Color endColor;
  final bottomColor;

  final String bottomText;
  final String middleImage;
  final String price;

  const TicketCard({
    super.key,
    required this.endText,
    required this.bottomColor,
    required this.DuTimeColor,
    required this.DutTime,
    required this.startTime,
    required this.startText,
    required this.endTime,
    required this.startColor,
    required this.endColor,
    required this.bottomText,
    required this.middleImage,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            height: 140,
            width: 370,
            child: Image.asset(
              'assets/images/Subtract.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 35, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(startTime,
                          style: TextStyle(
                              color: startColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w700)),
                      Text(startText,
                          style: TextStyle(
                              color: endColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/miniTrain.png"),
                      Image.asset("assets/images/Line6.png"),
                      Text(DutTime,
                          style: TextStyle(
                            color: DuTimeColor,
                            fontSize: 13,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Text(endTime,
                          style: TextStyle(
                            color: startColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          )),
                      Text(endText,
                          style: TextStyle(
                            color: endColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Image.asset('assets/images/Line9.png'),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(bottomText,
                      style: TextStyle(
                          color: bottomColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  Image.asset(middleImage),
                  Text(price,
                      style: TextStyle(
                          color: bottomColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
