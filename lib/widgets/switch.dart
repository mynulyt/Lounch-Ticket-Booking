import 'package:flutter/material.dart';

class ThreeButtonSwitch extends StatefulWidget {
  const ThreeButtonSwitch({super.key});

  @override
  _ThreeButtonSwitchState createState() => _ThreeButtonSwitchState();
}

class _ThreeButtonSwitchState extends State<ThreeButtonSwitch> {
  int selectedIndex = 0; // Default selected button

  final List<String> options = ["One way", "Round", "Multi-wharf"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF26457C)),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(options.length, (index) {
            bool isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index; // Update selected button
                });
              },
              child: Container(
                height: 42,
                width: 120, // Adjust size dynamically
                decoration: BoxDecoration(
                  color: isSelected ? Color(0xFF26457C) : Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    options[index],
                    style: TextStyle(
                      fontSize: 18,
                      color: isSelected ? Colors.white : Color(0xFF999999),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
