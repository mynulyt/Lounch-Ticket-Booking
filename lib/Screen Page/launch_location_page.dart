import 'package:flutter/material.dart';
import 'package:lounch_ticket_booking/Screen%20Page/button_nav_bar.dart';
import 'package:lounch_ticket_booking/widgets/different_color_text.dart';

class LaunchLocationPage extends StatelessWidget {
  final List<Map<String, dynamic>> ferries = [
    {
      "id": "16751",
      "time": "12:30 AM → 1:00 AM",
      "name": "FARHAN 04",
      "daily": true
    },
    {
      "id": "22623",
      "time": "3:15 AM → 4:00 AM",
      "name": "TASRIF 08",
      "daily": true
    },
    {
      "id": "16811",
      "time": "7:15 AM → 8:00 AM",
      "name": "MEGNA 03",
      "daily": true
    },
    {
      "id": "17315",
      "time": "1:15 PM → 2:00 PM",
      "name": "SUNDARBAN 01",
      "daily": false,
    },
  ];

  LaunchLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ButtonNavBar()));
                          },
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Center(
                          child: DropdownButton(
                            value: "ALL DATES",
                            items: [
                              DropdownMenuItem(
                                  value: "ALL DATES",
                                  child: Text("ALL DATES  "))
                            ],
                            onChanged: (value) {},
                            icon: Image.asset('assets/images/Vector.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 25,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Center(
                          child: DropdownButton(
                            value: "SHOW FARES",
                            items: [
                              DropdownMenuItem(
                                  value: "SHOW FARES",
                                  child: Text("SHOW FARES  "))
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
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              color: Color(0xFF25457C),
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("HATIA",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text(" WHARF",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                    ],
                  ),
                  Image.asset('assets/images/Arrow.png'),
                  Column(
                    children: [
                      Text("DHAKA ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text("WHARF",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ferries.length,
                itemBuilder: (context, index) {
                  final ferry = ferries[index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      leading: Container(
                        height: 35,
                        width: 80,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFF25457C),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            ferry["id"],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                      ),
                      title: Text(ferry["time"],
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Row(
                        children: [
                          Text(
                            ferry["name"],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          ferry["daily"]
                              ? Text("RUN DAILY",
                                  style: TextStyle(color: Colors.blue))
                              : ColoredDaysWidget(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
