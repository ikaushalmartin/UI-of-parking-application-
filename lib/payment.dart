import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/slotbooking.dart';
import 'package:untitled/ticket.dart';
import 'const.dart';
import 'package:get/get.dart';

import 'dashboard.dart';

void main() {
  runApp(GetMaterialApp(home: const payment()));
}

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  int finalprice = price;
  var finaldate = date;
  var z = price + 10;

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
                        "Payment",
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
                  height: MediaQuery.of(context).size.height / 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 5,
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
                          SizedBox(height: 5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Parking Price : ",
                                    style: TextStyle(
                                        color: Color(0xff1D2322),
                                        fontFamily: 'other',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "₹$finalprice",
                                    style: TextStyle(
                                        color: Color(0xff1D2322),
                                        fontFamily: 'other',
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Service Tax : ",
                                    style: TextStyle(
                                        color: Color(0xff1D2322),
                                        fontFamily: 'other',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "₹10",
                                    style: TextStyle(
                                        color: Color(0xff1D2322),
                                        fontFamily: 'other',
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "You Have To Pay : ",
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
                    height: MediaQuery.of(context).size.height / 1.8,
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
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Payment Details",
                              style: TextStyle(
                                  color: Color(0xff1D2322),
                                  fontFamily: 'other',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Card Details",
                              style: TextStyle(
                                  color: Color(0xff1D2322),
                                  fontFamily: 'other',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Text(
                              "Enter the 16-digit card number",
                              style: TextStyle(
                                  color: Color(0xff5A5A5A),
                                  fontSize: 12,
                                  fontFamily: 'other'),
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
                                    hintText: "Card Number"),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "CVV Number",
                                      style: TextStyle(
                                          color: Color(0xff1D2322),
                                          fontFamily: 'other',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "3-digit number on card",
                                      style: TextStyle(
                                          color: Color(0xff5A5A5A),
                                          fontSize: 12,
                                          fontFamily: 'other'),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Expiry Date",
                                      style: TextStyle(
                                          color: Color(0xff1D2322),
                                          fontFamily: 'other',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "Expiry date of card",
                                      style: TextStyle(
                                          color: Color(0xff5A5A5A),
                                          fontSize: 12,
                                          fontFamily: 'other'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width / 2.6,
                                  child: TextField(
                                    onChanged: (value) {},
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Color(0xFF7A8C99)),
                                    textAlign: TextAlign.left,
                                    decoration: kTextFieldDecoration.copyWith(
                                        contentPadding:
                                            EdgeInsets.only(left: 20),
                                        hintText: "CVV Number"),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width:
                                      MediaQuery.of(context).size.width / 2.6,
                                  child: TextField(
                                    onChanged: (value) {},
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Color(0xFF7A8C99)),
                                    textAlign: TextAlign.left,
                                    decoration: kTextFieldDecoration.copyWith(
                                        contentPadding:
                                            EdgeInsets.only(left: 20),
                                        hintText: "Expiry Date"),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Pay Using",
                              style: TextStyle(
                                  color: Color(0xff1D2322),
                                  fontFamily: 'other',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "images/gpay.png",
                                  scale: 10,
                                ),
                                Image.asset(
                                  "images/phonepy.png",
                                  scale: 16,
                                ),
                                Image.asset(
                                  "images/paytm.png",
                                  scale: 10,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: MaterialButton(
                                onPressed: () {
                                  Get.to(
                                    ticket(),
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
                                  "Pay & Generate Pass",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'other',
                                      fontSize: 14.3),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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
            ))
      ]),
    ));
  }
}
