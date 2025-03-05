import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  final String imagePath;
  final String cardNumber;
  final IconData? icon;

  const PaymentCard({
    super.key,
    required this.imagePath,
    required this.cardNumber,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imagePath),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (icon != null)
                  Icon(
                    icon,
                    color: Color(0xFF26457C),
                  ),
                Text(
                  cardNumber,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
