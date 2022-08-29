import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/dashboard.dart';
import 'package:untitled/payment.dart';
import 'package:untitled/ticket.dart';
import 'const.dart';
import 'package:get/get.dart';

var date;
int price = 0;
var time;
void main() {
  runApp(GetMaterialApp(home: const slotbooking()));
}

class slotbooking extends StatefulWidget {
  const slotbooking({Key? key}) : super(key: key);

  @override
  State<slotbooking> createState() => _slotbookingState();
}

class _slotbookingState extends State<slotbooking> {
  void setprice(int n) {
    setState(() {
      price = n;
    });
  }

  void setdate(String x) {
    date = x;
  }

  void settime(String x) {
    setState(() {
      time = x;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: CustomScrollView(slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.menu_sharp,
                            size: 25,
                          ),
                          Text(
                            "Slot Booking",
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
                      height: MediaQuery.of(context).size.height / 45,
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
                            children: [
                              Text(
                                "Enter Your Details",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: TextField(
                                  onChanged: (value) {},
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(color: Color(0xFF7A8C99)),
                                  textAlign: TextAlign.left,
                                  decoration: kTextFieldDecoration.copyWith(
                                      contentPadding: EdgeInsets.only(left: 20),
                                      hintText: "Name"),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: TextField(
                                  onChanged: (value) {},
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: Color(0xFF7A8C99)),
                                  textAlign: TextAlign.left,
                                  decoration: kTextFieldDecoration.copyWith(
                                      contentPadding: EdgeInsets.only(left: 20),
                                      hintText: "Age"),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: TextField(
                                  onChanged: (value) {},
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(color: Color(0xFF7A8C99)),
                                  textAlign: TextAlign.left,
                                  decoration: kTextFieldDecoration.copyWith(
                                      contentPadding: EdgeInsets.only(left: 20),
                                      hintText: "Email Address"),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: TextField(
                                  onChanged: (value) {},
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(color: Color(0xFF7A8C99)),
                                  textAlign: TextAlign.left,
                                  decoration: kTextFieldDecoration.copyWith(
                                      contentPadding: EdgeInsets.only(left: 20),
                                      hintText: "Mobile Number"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4.8,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xffdfe2e2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date & Time",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 30,
                                child: ListView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        setdate("24 Aug");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 20,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Text(
                                        "24 Aug",
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontFamily: 'other',
                                            fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setdate("25 Aug");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 20,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Text(
                                        "25 Aug",
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontFamily: 'other',
                                            fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setdate("26 Aug");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 20,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Text(
                                        "26 Aug",
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontFamily: 'other',
                                            fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setdate("27 Aug");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 20,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Text(
                                        "27 Aug",
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontFamily: 'other',
                                            fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setdate("28 Aug");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 20,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Text(
                                        "28 Aug",
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontFamily: 'other',
                                            fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setdate("29 Aug");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 20,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Text(
                                        "29 Aug",
                                        style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontFamily: 'other',
                                            fontSize: 14),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child: ListView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        setprice(10);
                                        settime("1-2Hrs");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 10,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "1-2",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "Hours",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setprice(20);
                                        settime("2-3Hrs");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 10,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "2-3",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "Hours",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setprice(30);
                                        settime("3-4Hrs");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 10,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "3-4",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "Hours",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setprice(40);
                                        settime("4-5Hrs");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 10,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "4-5",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "Hours",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setprice(50);
                                        settime("5-6Hrs");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 10,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "5-6",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "Hours",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setprice(60);
                                        settime("6-7Hrs");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 10,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "6-7",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "Hours",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setprice(70);
                                        settime("7-8Hrs");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 10,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "7-8",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "Hours",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        setprice(100);
                                        settime("12Hrs");
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 20,
                                      height: 10,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "12",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            "Hours",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontFamily: 'other',
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Price : ₹$price",
                            style: TextStyle(
                                color: Color(0xff1D2322),
                                fontFamily: 'other',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.3),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: MaterialButton(
                                onPressed: () {
                                  Get.to(
                                    payment(),
                                    transition: Transition.rightToLeft,
                                  );
                                },
                                elevation: 0,
                                hoverElevation: 0,
                                focusElevation: 0,
                                highlightElevation: 0,
                                minWidth:
                                    MediaQuery.of(context).size.width / 2.5,
                                height: 45,
                                color: Color(0xff5B72E3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  "Pay For Parking Pass",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'other',
                                      fontSize: 14.3),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30,
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
                          onPressed: () async {},
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
                ),
              )
            ])));
  }
}
