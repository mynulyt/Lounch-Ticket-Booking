import 'package:flutter/material.dart';

void showPaymentSuccessPopup(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true, // Tap outside to close
    barrierLabel: "",
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: Material(
          color: Colors.transparent, // Keep background unchanged
          child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Image.asset('assets/images/Star1.png'),
                    Positioned(
                        top: 30,
                        left: 20,
                        child: Image.asset('assets/images/Vector5.png')),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Payment Done Successful!",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF222222)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text("OK"),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
