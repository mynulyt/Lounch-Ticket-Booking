import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/login_screen.dart';
import 'package:lounch_ticket_booking/widgets/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/imageOne.png',
                  height: 88,
                  width: 299,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  left: 2,
                  child: Text(
                    "Tilottoma Hatia Sea",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: inikaBold,
                      color: Color(0xFF26457C),
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Container(
              width: 390,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFF26457C),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20,
                    // fontFamily: 'Urbanist',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Wheer is My'),
                    Text(
                      'Launch',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Already a user'),
                    Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
