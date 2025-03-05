import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/login_screen.dart';
import 'package:lounch_ticket_booking/Screen%20Page/main_home.dart';
import 'package:lounch_ticket_booking/widgets/style.dart';


class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

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
                              builder: (context) => LoginScreen()));
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
                    "Create\nan Account",
                    style: TextStyle(
                        color: Color(0xFF26457C),
                        fontSize: 40,
                        fontFamily: urbanistBold,
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
                      )),
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
                            prefixIcon: const Icon(Icons.phone_sharp,
                                color: Color(0xFF26457C)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none),
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(fontFamily: montRegular)),
                      )),
                  SizedBox(
                    height: 20,
                  ),
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
                            hintText: 'Confirem Password',
                            hintStyle: TextStyle(fontFamily: montRegular)),
                      )),
                  SizedBox(
                    height: 40,
                  ),

                  //For create button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainHomePage()));
                    },
                    child: Center(
                      child: Container(
                        width: 390,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF26457C),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              fontFamily: montRegular,
                              color: Color(0xFFFFFFFF),
                              fontSize: 20,
                              // fontFamily: 'Urbanist',
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
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already you have account",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: montRegular,
                              color: Colors.black87)),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text(" Login",
                            style: TextStyle(
                                fontFamily: montRegular,
                                fontSize: 18,
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
