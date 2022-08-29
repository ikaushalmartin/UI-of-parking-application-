import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/slotbooking.dart';
import 'const.dart';
import 'package:get/get.dart';

import 'dashboard.dart';

void main() {
  runApp(GetMaterialApp(home: const ticket()));
}

class ticket extends StatefulWidget {
  const ticket({Key? key}) : super(key: key);

  @override
  State<ticket> createState() => _ticketState();
}

class _ticketState extends State<ticket> {
  int finalprice = price;
  var finaldate = date;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.menu_sharp,
                        size: 25,
                      ),
                      Text(
                        "Parking Pass",
                        style: TextStyle(
                            color: Color(0xff1D2322),
                            fontFamily: 'other',
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4rsSzLimlQyniEtUV4-1raljzFhS45QBeAw&usqp=CAU"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffdfe2e2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Congratulations! Your Parking Pass Has Generated",
                            style: TextStyle(
                                color: Color(0xff1D2322),
                                fontFamily: 'other',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "Now you can park your vehicle at the mentioned place.",
                            style: TextStyle(
                                color: Color(0xff5A5A5A),
                                fontSize: 12,
                                fontFamily: 'other'),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Date : ",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                "$date",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Time Alloted : ",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                "$time",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Parking ID : ",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                "0xff824",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Parking Area : ",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                "D24, Floor -1",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Total Price Paid : ",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                "₹${finalprice + 10}",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffdfe2e2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Parking QR",
                            style: TextStyle(
                                color: Color(0xff1D2322),
                                fontFamily: 'other',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Image.asset(
                            "images/qr.png",
                            scale: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Get.offAll(
                          MyApp(),
                          transition: Transition.leftToRight,
                        );
                      },
                      elevation: 0,
                      hoverElevation: 0,
                      focusElevation: 0,
                      highlightElevation: 0,
                      minWidth: MediaQuery.of(context).size.width / 2,
                      height: 50,
                      color: Color(0xff5B72E3),
                      child: Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'other',
                            fontSize: 16),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      elevation: 0,
                      hoverElevation: 0,
                      focusElevation: 0,
                      highlightElevation: 0,
                      minWidth: MediaQuery.of(context).size.width / 2,
                      height: 50,
                      color: Color(0xffF24E8A),
                      child: Text(
                        "Profile  ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'other',
                            fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
