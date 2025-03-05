import 'package:flutter/material.dart';

class CustomDetailsTextFieldHome extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String? iconPath;
  final Color textColor;
  final Color borderColor;

  const CustomDetailsTextFieldHome({
    super.key,
    required this.labelText,
    required this.hintText,
    this.iconPath,
    required this.textColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 170,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0)),
          hintStyle: TextStyle(
              color: textColor, fontSize: 12, fontWeight: FontWeight.w500),
          labelStyle: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300),
          prefixIcon: iconPath != null
              ? Image.asset(
                  iconPath!,
                  color: textColor,
                )
              : null,
          labelText: labelText,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
