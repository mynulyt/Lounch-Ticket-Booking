import 'package:flutter/material.dart';

class SelectionButtons extends StatefulWidget {
  const SelectionButtons({super.key});

  @override
  _SelectionButtonsState createState() => _SelectionButtonsState();
}

class _SelectionButtonsState extends State<SelectionButtons> {
  int selectedIndex = -1; // No selection by default

  final List<Map<String, dynamic>> options = [
    {"text": "Selected", "color": Color(0xFF336EF2)},
    {"text": "Emergency exit", "color": Color(0xFF7C7270)},
    {"text": "Reserved", "color": Color(0xFFD9D9D9)},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(options.length, (index) {
          bool isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index; // Update selected option
              });
            },
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  color: isSelected ? options[index]['color'] : Colors.grey,
                ),
                const SizedBox(width: 10),
                Text(
                  options[index]['text'],
                  style: TextStyle(
                    fontSize: 12,
                    color: isSelected
                        ? options[index]['color']
                        : Color(0xFF555555),
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
