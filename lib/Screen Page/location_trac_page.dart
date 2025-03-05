import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/button_nav_bar.dart';
import 'package:lounch_ticket_booking/widgets/custom_textField2.dart';

class LocationTracPage extends StatelessWidget {
  const LocationTracPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 120,
                width: 390,
                decoration: BoxDecoration(
                  color: (Color(0xFF26457C)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
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
                                border:
                                    Border.all(color: Colors.white, width: 2),
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
                            "Where is my Launch",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 180,
                width: 390,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF26457C)),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField2(
                          prefixIcon: Image.asset('assets/images/TrainR.png'),
                          hintMain: "Hatia",
                          hintSub: "HTA",
                          labelHint: "From",
                          colorM: Colors.white,
                          colorS: Colors.white70,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField2(
                          prefixIcon: Image.asset('assets/images/TrainL.png'),
                          hintMain: "Hatia",
                          hintSub: "DH",
                          labelHint: "To",
                          colorM: Colors.white,
                          colorS: Colors.white70,
                        ),
                      ],
                    ),
                    Positioned(
                        top: 70,
                        left: 330,
                        child: Image.asset('assets/images/Arrow2.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ButtonNavBar()));
                },
                child: Center(
                  child: Container(
                    width: 390,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF26457C),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "SEARCH LAUNCH",
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
              SizedBox(
                height: 40,
              ),
              //
              Image.asset('assets/images/Line14.png'),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 390,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Align items properly
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Train.png',
                          width: 30, // Adjust size as needed
                          height: 30,
                        ),
                        const SizedBox(
                            width: 8), // Space between image and text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Launch No./ Launch",
                              style: TextStyle(
                                color: Color(0xFF676767),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Color(0xFF676767),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image.asset(
                              'assets/images/Search.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/Line14.png'),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/Location.png'),
                    Text(
                      "LIVE STATION",
                      style: TextStyle(
                          color: Color(0xFF26457C),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 390,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // Align items properly
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Train.png',
                          width: 30, // Adjust size as needed
                          height: 30,
                        ),
                        const SizedBox(
                            width: 8), // Space between image and text
                        Text(
                          "Hatia",
                          style: TextStyle(
                            color: Color(0xFF676767),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image.asset(
                              'assets/images/Search.png',
                              width: 20,
                              height: 20,
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
    );
  }
}
