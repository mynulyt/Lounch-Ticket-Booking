import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/button_nav_bar.dart';
import 'package:lounch_ticket_booking/Screen%20Page/payment_screen.dart';
import 'package:lounch_ticket_booking/widgets/Gap10.dart';
import 'package:lounch_ticket_booking/widgets/selector_widget.dart';

import '../widgets/customSeat.dart';

class SeatBookingPage extends StatelessWidget {
  const SeatBookingPage({super.key});
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
            Stack(
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
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: Image.asset('assets/images/seat.png'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "General Quota Seat",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF26457C),
                ),
              ),
            ),

            //For selection Bullet Point

            SelectionButtons(),
            SizedBox(
              height: 5,
            ),
            //For seat selection
            AllSeatPlan(),
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
                              builder: (context) => PaymentScreen()));
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
    );
  }

  Stack AllSeatPlan() {
    return Stack(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                //for seat
                Container(
                  height: 490,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            Image.asset('assets/images/information.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Exit row",
                              style: TextStyle(
                                  color: Color(0xFF7C8DB0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      //
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '6',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '7',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '8',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '9',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '10',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '11',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '12',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '13',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        child: Row(
                          children: [
                            Image.asset('assets/images/information.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Exit row",
                              style: TextStyle(
                                  color: Color(0xFF7C8DB0),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '15',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '15',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '16',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: Row(
                          children: [
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Colors.white,
                              text: '17',
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                            Gap(),
                            CustomSeat(
                              color: Color(0xFF326EF2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "S1",
            style: TextStyle(
                color: Color(0xFF26457C),
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
