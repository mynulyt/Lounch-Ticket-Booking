import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/details_page.dart';
import 'package:lounch_ticket_booking/Screen%20Page/main_home.dart';
import 'package:lounch_ticket_booking/widgets/ticket_card.dart';

class SelectLaunch extends StatelessWidget {
  const SelectLaunch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white, // Dark Blue
              Color.fromRGBO(78, 100, 138, 1), // Light Blue
            ],
          ),
        ),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 40,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainHomePage()));
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
                        "Select Your Launch",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF26457C),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),

              Stack(
                children: [
                  Positioned(
                    left: 140,
                    child: Image.asset('assets/images/image.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
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
                          height: 80,
                          width: 80,
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

              SizedBox(height: 20),

              // Selection Text Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFE3E3E3)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '26/May/2023',
                            hintStyle: TextStyle(color: Color(0xFF26457C)),
                            prefixIcon: Image.asset(
                              "assets/images/Calender.png",
                              color: Color(0xFF26457C),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFE3E3E3)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '1 Passenger',
                            hintStyle: TextStyle(color: Color(0xFF26457C)),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xFF26457C),
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Button Bar
              GestureDetector(
                onTap: () {},
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
                        "General Quota",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Ticket Cards
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage()));
                        },
                        child: TicketCard(
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
                            middleImage: 'assets/images/imageTwo.png',
                            price: 'ট 1500')),
                    SizedBox(height: 15),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage()));
                        },
                        child: TicketCard(
                            endText: 'Dhaka',
                            bottomColor: Color(0xFF0C85B6),
                            DuTimeColor: Color(0xFF0C85B6),
                            DutTime: '16 hrs',
                            startTime: '9:50 AM',
                            startText: 'Hatia',
                            endTime: '12:50 PM',
                            startColor: Color(0xFF0C85B6),
                            endColor: Color(0xFFFBBB00),
                            bottomText: 'WAG',
                            middleImage: 'assets/images/imageThree.png',
                            price: 'ট 500')),
                    SizedBox(height: 15),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage()));
                        },
                        child: TicketCard(
                            endText: 'Monpura',
                            bottomColor: Color(0xFFCE3B16),
                            DuTimeColor: Color(0xFFCE3B16),
                            DutTime: '02 hrs',
                            startTime: '10:20 AM',
                            startText: 'Hatia',
                            endTime: '12:20 PM',
                            startColor: Color(0xFFCE3B16),
                            endColor: Color(0xFF26457C),
                            bottomText: 'Tasrif 04',
                            middleImage: 'assets/images/imageFour.png',
                            price: 'ট 300')),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
