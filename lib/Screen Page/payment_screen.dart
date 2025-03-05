import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/button_nav_bar.dart';
import 'package:lounch_ticket_booking/widgets/payment_card.dart';
import 'package:lounch_ticket_booking/widgets/pop_up.dart';
import 'package:lounch_ticket_booking/widgets/style.dart';
import 'package:lounch_ticket_booking/widgets/ticket_card.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                height: 350,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        "Payment",
                        style: TextStyle(
                            fontSize: 35,
                            color: Color(0xFF26457C),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xFF26457C),
                height: 516.2,
                width: double.infinity,
              ),
            ],
          ),
          Positioned(
            top: 140,
            child: Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Container(
                height: 645,
                width: 400,
                decoration: BoxDecoration(
                    color: Color(0xFFDCDCDC),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TicketCard(
                        endText: 'KL',
                        bottomColor: Color(0xFFCE3B16),
                        DuTimeColor: Color(0xFFCE3B16),
                        DutTime: '12hrs',
                        startTime: '09:30 AM',
                        startText: 'CHE',
                        endTime: '09:30 PM',
                        startColor: Color(0xFFCE3B16),
                        endColor: Color(0xFFFBBB00),
                        bottomText: 'WAG 7',
                        middleImage: 'assets/images/imageThree.png',
                        price: 'ট 1,500',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 18),
                          ),
                          Text(
                            "ট 1,500",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 17),
                          ),
                        ],
                      ),
                      Image.asset('assets/images/Line33.png'),
                      Text(
                        "Payment",
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      PaymentCard(
                        imagePath: 'assets/images/visa.png',
                        icon: Icons.person,
                        cardNumber: '***********0017',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      PaymentCard(
                        imagePath: 'assets/images/paypal.png',
                        cardNumber: '***********0017',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      PaymentCard(
                        imagePath: 'assets/images/maestro.png',
                        cardNumber: '***********0017',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      PaymentCard(
                        imagePath: 'assets/images/maestro1.png',
                        cardNumber: '***********0017',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          showPaymentSuccessPopup(context);
                        },
                        child: Center(
                          child: Container(
                            width: 370,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF26457C),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "Continue",
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
        ],
      ),
    );
  }
}
