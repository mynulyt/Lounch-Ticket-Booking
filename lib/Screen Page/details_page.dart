import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/button_nav_bar.dart';
import 'package:lounch_ticket_booking/Screen%20Page/seat_booking_page.dart';
import 'package:lounch_ticket_booking/widgets/custom_details_textField.dart';
import 'package:lounch_ticket_booking/widgets/ticket_card.dart';


class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white, // Dark Blue
                Color.fromRGBO(167, 188, 223, 1), // Light Blue
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 40),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ButtonNavBar()));
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
                        SizedBox(width: 20),
                        Text(
                          "Launch Details",
                          style: TextStyle(
                              fontSize: 35,
                              color: Color(0xFF26457C),
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TicketCard(
                    endText: 'Dhaka',
                    bottomColor: Color(0xFFCE3B16),
                    DuTimeColor: Color(0xFFCE3B16),
                    DutTime: '16 hrs',
                    startTime: '12:30 AM',
                    startText: 'Hatia',
                    endTime: '4:30 PM',
                    startColor: Color(0xFFCE3B16),
                    endColor: Color(0xFFFBBB00),
                    bottomText: 'farhan 7',
                    middleImage: 'assets/images/imageThree.png',
                    price: 'ট 1500'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 500,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/images/imageFour.png'),
                        SizedBox(
                          height: 40,
                        ),
                        //For Distance showing
                        Stack(
                          children: [
                            Positioned(
                              bottom: 30,
                              left: 110,
                              child: Image.asset('assets/images/imageTwo.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 40,
                                          offset: Offset(2, 4),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Hatia",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFFFBBB00)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 230,
                                    child: Image.asset(
                                      'assets/images/Distance.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          spreadRadius: 1,
                                          blurRadius: 40,
                                          offset: Offset(2, 4),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Dhaka",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFFFBBB00)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //For Location data
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tamaraddi Launch\nWharf",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF868686),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Dhaka Sadar Wharf",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF868686),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //For Date and Time details of ticket

                        Text(
                            '______________________________________________________'),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomDetailsTextField(
                                    labelText: 'Date',
                                    hintText: '26/05/2023',
                                    iconPath: 'assets/images/Calender.png',
                                    textColor: Color(0xFF191919),
                                    borderColor: Color(0xFF555555),
                                  ),
                                  CustomDetailsTextField(
                                    labelText: 'Time',
                                    hintText: '09.30',
                                    iconPath: 'assets/images/Clock.png',
                                    textColor: Color(0xFF191919),
                                    borderColor: Color(0xFF555555),
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
                                  CustomDetailsTextField(
                                    labelText: 'Qouta',
                                    hintText: 'General Quota',
                                    textColor: Color(0xFF191919),
                                    borderColor: Color(0xFF555555),
                                  ),
                                  CustomDetailsTextField(
                                    labelText: 'Coach',
                                    hintText: 'S1',
                                    iconPath: 'assets/images/Railcar.png',
                                    textColor: Color(0xFF191919),
                                    borderColor: Color(0xFF555555),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            '______________________________________________________'),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "ট 1,500",
                              style: TextStyle(
                                color: Color(0xFF191919),
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //For Decision Buttom
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xFF26457C))),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  color: Color(0xFF26457C),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeatBookingPage()));
                        },
                        child: Center(
                          child: Container(
                            width: 149,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF26457C),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
