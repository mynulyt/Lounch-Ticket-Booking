import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/button_nav_bar.dart';
import 'package:lounch_ticket_booking/Screen%20Page/create_account.dart';
import 'package:lounch_ticket_booking/Screen%20Page/forgot_passwor.dart';
import 'package:lounch_ticket_booking/Screen%20Page/home_screen.dart';
import 'package:lounch_ticket_booking/widgets/style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      height: 41,
                      width: 41,
                      decoration: BoxDecoration(
                          color: Color(0xFF26457C),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Welcome\nBack",
                    style: TextStyle(
                        color: Color(0xFF26457C),
                        fontSize: 40,
                        fontFamily: montRegular,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //For TextField of username or email
                  Container(
                    width: 390,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white54,
                          prefixIcon: const Icon(Icons.person,
                              color: Color(0xFF26457C)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                          hintText: 'Username Or Email',
                          hintStyle: TextStyle(fontFamily: montRegular)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //For TextField of username or email
                  Container(
                      width: 390,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(2, 4),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white54,
                            prefixIcon: const Icon(Icons.lock,
                                color: Color(0xFF26457C)),
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            hintText: 'Password',
                            hintStyle: TextStyle(fontFamily: montRegular)),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  //For Forgot password
                  Row(
                    children: [
                      SizedBox(
                        width: 220,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Color(0xFF26457C),
                              fontSize: 18,
                              fontFamily: montRegular),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //For login button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ButtonNavBar()));
                    },
                    child: Center(
                      child: Container(
                        width: 149,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF26457C),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 20,
                              fontFamily: urbanistBold,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "____________________",
                        style: TextStyle(color: Color(0xFF26457C)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Or Login with",
                        style: TextStyle(
                            color: Color(0xFF26457C),
                            fontSize: 16,
                            fontFamily: montRegular,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "____________________",
                        style: TextStyle(color: Color(0xFF26457C)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 20,
                            offset: Offset(0, 4),
                          )
                        ]),
                        width: 65,
                        height: 31,
                        child: Image.asset(
                          'assets/images/facebook.png',
                        ),
                      ),
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4),
                          )
                        ]),
                        width: 65,
                        height: 31,
                        child: Image.asset(
                          'assets/images/apple.png',
                        ),
                      ),
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4),
                          )
                        ]),
                        width: 65,
                        height: 31,
                        child: Image.asset(
                          'assets/images/google.png',
                        ),
                      ),
                      Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4),
                          )
                        ]),
                        width: 65,
                        height: 31,
                        child: Image.asset('assets/images/TwitterX.png'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: montRegular,
                              color: Colors.black87)),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateAccount()));
                        },
                        child: Text("Register Now",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: montRegular,
                                color: Color(0xFF26457C),
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
