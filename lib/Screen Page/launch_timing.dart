import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/widgets/custom_tarck_widget.dart';

class LaunchTiming extends StatelessWidget {
  const LaunchTiming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xFF25457C),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: Color(0xFF26457C),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FARHAN LAUNCH",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                          height: 25,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Center(
                            child: DropdownButton(
                              value: "TODAY",
                              items: [
                                DropdownMenuItem(
                                    value: "TODAY",
                                    child: Text(
                                      "TODAY  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ))
                              ],
                              onChanged: (value) {},
                              icon: Image.asset('assets/images/Vector.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            color: Color(0xFF525252),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Arrival",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  Text(
                    "Day 0 - May 26, Sun",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  Text(
                    "Departure",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          Stack(
            children: [
              TimeShowing(),
              Positioned(
                left: 80,
                top: 10,
                child: Column(
                  children: [
                    Image.asset('assets/images/image4.png'),
                    Image.asset('assets/images/Frame.png'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container TimeShowing() {
    return Container(
      height: 625,
      width: double.infinity,
      color: Color(0xFFE2E2E2),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTrackWidget(
                  startTime: '12:30 PM',
                  endTime: '12:35 PM',
                  StColor: Colors.black,
                  EndColor: Color(0xFF31BB00),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTrackWidget(
                      startTime: 'Hatia',
                      endTime: '0 km Platform',
                      StColor: Colors.black,
                      EndColor: Colors.black54,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 12,
                      width: 18,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                                color: Color(0xFF26457C),
                                fontWeight: FontWeight.w400,
                                fontSize: 9),
                          ),
                          Image.asset('assets/images/Pencil.png')
                        ],
                      ),
                    ),
                  ],
                ),
                CustomTrackWidget(
                  startTime: '12:31 PM',
                  endTime: '',
                  StColor: Colors.black,
                  EndColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTrackWidget(
                  startTime: '12:4 PM',
                  endTime: '    --- ',
                  StColor: Colors.red,
                  EndColor: Colors.black,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTrackWidget(
                      startTime: 'Monpura',
                      endTime: '4 km Platform',
                      StColor: Colors.black,
                      EndColor: Colors.black54,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 12,
                      width: 18,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                                color: Color(0xFF26457C),
                                fontWeight: FontWeight.w400,
                                fontSize: 9),
                          ),
                          Image.asset('assets/images/Pencil.png')
                        ],
                      ),
                    ),
                  ],
                ),
                CustomTrackWidget(
                  startTime: '12:42 PM',
                  endTime: '    ---',
                  StColor: Colors.red,
                  EndColor: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTrackWidget(
                  startTime: '12:45 PM',
                  endTime: '    --',
                  StColor: Colors.red,
                  EndColor: Colors.black,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTrackWidget(
                      startTime: 'Tojumoddi',
                      endTime: '8 km Platform',
                      StColor: Colors.black,
                      EndColor: Colors.black54,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 12,
                      width: 18,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                                color: Color(0xFF26457C),
                                fontWeight: FontWeight.w400,
                                fontSize: 9),
                          ),
                          Image.asset('assets/images/Pencil.png')
                        ],
                      ),
                    ),
                  ],
                ),
                CustomTrackWidget(
                  startTime: '12:47 PM',
                  endTime: '    ---',
                  StColor: Colors.red,
                  EndColor: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTrackWidget(
                  startTime: '12:55 PM',
                  endTime: '    ---',
                  StColor: Colors.red,
                  EndColor: Colors.black,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTrackWidget(
                      startTime: 'Vula',
                      endTime: '18 km Platform',
                      StColor: Colors.black,
                      EndColor: Colors.black54,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 12,
                      width: 18,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                                color: Color(0xFF26457C),
                                fontWeight: FontWeight.w400,
                                fontSize: 9),
                          ),
                          Image.asset('assets/images/Pencil.png')
                        ],
                      ),
                    ),
                  ],
                ),
                CustomTrackWidget(
                  startTime: '12:57 PM',
                  endTime: '    ---',
                  StColor: Colors.red,
                  EndColor: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTrackWidget(
                  startTime: '1:00 PM',
                  endTime: '    --',
                  StColor: Colors.red,
                  EndColor: Colors.black,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTrackWidget(
                      startTime: 'Noakhali',
                      endTime: '23 km Platform',
                      StColor: Colors.black,
                      EndColor: Colors.black54,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 12,
                      width: 18,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                                color: Color(0xFF26457C),
                                fontWeight: FontWeight.w400,
                                fontSize: 9),
                          ),
                          Image.asset('assets/images/Pencil.png')
                        ],
                      ),
                    ),
                  ],
                ),
                CustomTrackWidget(
                  startTime: '1:20 PM',
                  endTime: '    ---',
                  StColor: Colors.red,
                  EndColor: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTrackWidget(
                  startTime: '1:30 PM',
                  endTime: '    ---',
                  StColor: Colors.red,
                  EndColor: Colors.black,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomTrackWidget(
                      startTime: 'Nolchira',
                      endTime: '23 km Platform',
                      StColor: Colors.black,
                      EndColor: Colors.black54,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 12,
                      width: 18,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                                color: Color(0xFF26457C),
                                fontWeight: FontWeight.w400,
                                fontSize: 9),
                          ),
                          Image.asset('assets/images/Pencil.png')
                        ],
                      ),
                    ),
                  ],
                ),
                CustomTrackWidget(
                  startTime: '1:32',
                  endTime: '    ---',
                  StColor: Colors.red,
                  EndColor: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 80,
              width: 390,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFB7C3D7)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "At Kumbakonam",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Updated few seconds ago",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/Update.png')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
