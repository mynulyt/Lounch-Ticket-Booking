import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: HomeScreen(),
    );
  }
}
