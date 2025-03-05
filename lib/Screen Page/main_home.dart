import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/login_screen.dart';
import 'package:lounch_ticket_booking/widgets/custom_textField.dart';
import 'package:lounch_ticket_booking/widgets/custom_text_fiels_home.dart';
import 'package:lounch_ticket_booking/widgets/switch.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 20, left: 5, right: 5),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //for user profile bar
                  Container(
                    width: 390,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF26457C),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset('assets/images/answar.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Answar Uddin",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image.asset(
                            'assets/images/trailing-icon.png',
                            height: 110,
                            width: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //For select bar

                  ThreeButtonSwitch(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 390,
                    height: 330,
                    decoration: BoxDecoration(
                      color: Color(0xFF26457C),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 390,
                          height: 180,
                          child: Stack(
                            children: [
                              // First TextField
                              Positioned(
                                top: 20.0,
                                left: 20.0,
                                right: 20.0,
                                child: CustomTextField(
                                  colorM: Colors.white,
                                  colorS: Colors.white70,
                                  hintMain: 'Hatia',
                                  hintSub: 'Nalchira Lauch wharf',
                                  labelHint: 'From',
                                  prefixIcon:
                                      Image.asset('assets/images/TrainR.png'),
                                ),
                              ),
                              // Second TextField
                              Positioned(
                                top: 100.0,
                                left: 20.0,
                                right: 20.0,
                                child: CustomTextField(
                                  colorM: Colors.white,
                                  colorS: Colors.lightBlue,
                                  hintMain: 'Noakhali',
                                  hintSub: 'Chairman ghat',
                                  labelHint: 'To',
                                  prefixIcon:
                                      Image.asset('assets/images/TrainL.png'),
                                ),
                              ),

                              Positioned(
                                top: 65.0,
                                left: 300.0,
                                child: Image.asset("assets/images/ArrowCR.png"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomDetailsTextFieldHome(
                                    labelText: 'Departure',
                                    hintText: '26/May/2023',
                                    iconPath: 'assets/images/Calender.png',
                                    textColor: Colors.white,
                                    borderColor: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CustomDetailsTextFieldHome(
                                    labelText: 'Return',
                                    hintText: '+ Add Return Date',
                                    iconPath: 'assets/images/Clock.png',
                                    textColor: Colors.white,
                                    borderColor: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomDetailsTextFieldHome(
                                    labelText: 'Travellar',
                                    hintText: '1 Adult',
                                    textColor: Colors.white,
                                    borderColor: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CustomDetailsTextFieldHome(
                                    labelText: 'Quata',
                                    hintText: 'General Quata',
                                    textColor: Colors.white,
                                    borderColor: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
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
                          "SEARCH LAOUNCH",
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
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hot Offer",
                          style:
                              TextStyle(color: Color(0xFF26457C), fontSize: 18),
                        ),
                        Text(
                          "See all",
                          style:
                              TextStyle(color: Color(0xFF26457C), fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 112,
                          width: 264,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 112,
                          width: 264,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 112,
                          width: 264,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 112,
                          width: 264,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ],
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
