import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/login_screen.dart';
import 'package:lounch_ticket_booking/widgets/style.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                  //for back to the page
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
                    "Forgot\nPassword?",
                    style: TextStyle(
                        color: Color(0xFF26457C),
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 60,
                  ),

                  //For TextField of forgot password
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
                          prefixIcon:
                              const Icon(Icons.email, color: Color(0xFF26457C)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                          hintText: 'Enter your Email Address',
                          hintStyle: TextStyle(fontFamily: montRegular)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //For Forgot password

                  Text(
                    "* We will send you a message to set  or reset your new password",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontFamily: montRegular),
                  ),

                  SizedBox(
                    height: 60,
                  ),
                  //For login button
                  GestureDetector(
                    onTap: () {},
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
                            "Submit",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
