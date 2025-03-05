import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/button_nav_bar.dart';


class ETicketPage extends StatelessWidget {
  const ETicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white, // Top solid color
              Color.fromRGBO(42, 93, 180, 1), // Gradient starts
              Colors.white, // Bottom solid color
            ],
            stops: [0.0, 0.5, 1.0], // 0% (Top), 50% (Mid), 100% (Bottom)
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 60),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            "E - Ticket",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF26457C),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                              top: 8,
                              left: 10,
                              child: Image.asset('assets/images/print.png')),
                          Image.asset('assets/images/Base.png'),
                        ],
                      ),
                    ],
                  ),
                  //For data
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: SizedBox(
                      height: 566,
                      width: 285,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/image13.png'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Farhan 04",
                                  style: TextStyle(
                                      color: Color(0xFF1E406F),
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "26/May/2023",
                                  style: TextStyle(
                                      color: Color(0xFF1E406F),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "12:30 AM",
                                      style: TextStyle(
                                          color: Color(0xFF1E406F),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Hatia",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset('assets/images/image3.png'),
                                        Image.asset('assets/images/Line6.png'),
                                      ],
                                    ),
                                    Text(
                                      "12 hrs",
                                      style: TextStyle(
                                          color: Color(0xFF1E406F),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "04:30 PM",
                                      style: TextStyle(
                                          color: Color(0xFF1E406F),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Dhaka",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Quota",
                                      style: TextStyle(
                                          color: Color(0xFF1E406F),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "GN",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Coach",
                                      style: TextStyle(
                                          color: Color(0xFF1E406F),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "S1",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Seat No",
                                      style: TextStyle(
                                          color: Color(0xFF1E406F),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "17",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Train",
                                      style: TextStyle(
                                          color: Color(0xFF1E406F),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "DJ017",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  child:
                                      Image.asset('assets/images/answar.png'),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Answar Uddin",
                                      style: TextStyle(
                                          color: Color(0xFF1E406F),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "22 years, Male",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/images/Sofa.png'),
                                    Text(
                                      "17 D",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset('assets/images/Scan.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //For prit buttom

                  Positioned(
                    top: 600,
                    left: 60,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ButtonNavBar()));
                      },
                      child: Center(
                        child: Container(
                          width: 220,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF26457C),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "PRINT",
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
