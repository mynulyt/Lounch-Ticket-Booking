import 'package:flutter/material.dart';

class CustomDetailsTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String? iconPath;
  final Color textColor;
  final Color borderColor;

  const CustomDetailsTextField({
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
      width: 175,
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500),
          labelStyle: TextStyle(
              color: textColor.withOpacity(0.7),
              fontSize: 12,
              fontWeight: FontWeight.w300),
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
            borderSide: BorderSide(color: borderColor, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
