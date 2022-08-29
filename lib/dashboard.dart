import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:untitled/slotbooking.dart';
import 'const.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Set<Marker> patientmarker = {};
  late BitmapDescriptor mapmarker;

  void patientmap(GoogleMapController controller) {
    //controller.setMapStyle(Utils.style);
    setState(() {
      patientmarker.add(Marker(
          markerId: MarkerId('marker1'),
          position: LatLng(30.7418, 76.7813),
          infoWindow: InfoWindow(
              title: "Parking Available", snippet: "Multilevel Parking")));
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
                          Column(
                            children: [
                              Text(
                                "Hello, Martin!",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "Find parking area easily here",
                                style: TextStyle(
                                    color: Color(0xff5A5A5A),
                                    fontSize: 12,
                                    fontFamily: 'other'),
                              )
                            ],
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
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: TextField(
                              onChanged: (value) {},
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Color(0xFF7A8C99)),
                              textAlign: TextAlign.left,
                              decoration: kTextFieldDecoration.copyWith(
                                  contentPadding: EdgeInsets.only(left: 20),
                                  hintText: "Find Parking Area.."),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Color(0xFF7A8C99),
                                size: 27,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        "Car Parking Locations",
                        style: TextStyle(
                            color: Color(0xff1D2322),
                            fontFamily: 'other',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: GoogleMap(
                              onMapCreated: patientmap,
                              markers: patientmarker,
                              gestureRecognizers: Set()
                                ..add(Factory<PanGestureRecognizer>(
                                    () => PanGestureRecognizer())),
                              initialCameraPosition: CameraPosition(
                                  target: LatLng(30.7418, 76.7813), zoom: 15)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 35,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.9,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xffdfe2e2),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            children: [
                              Text(
                                "Available Parkings",
                                style: TextStyle(
                                    color: Color(0xff1D2322),
                                    fontFamily: 'other',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: MediaQuery.of(context).size.height / 8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                        width: 100,
                                        height: 80,
                                        padding: EdgeInsets.only(left: 10),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "https://img.staticmb.com/mbcontent//images/uploads/2021/12/underground-parking-cars-white-colors.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Multilevel Parking",
                                          style: TextStyle(
                                              color: Color(0xff1D2322),
                                              fontFamily: 'other',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Container(
                                          width: 150,
                                          child: Text(
                                            "PQRJ+PGP, Bridge Market, 17D, Sector 17, Chandigarh, 160017",
                                            style: TextStyle(
                                                color: Color(0xff5A5A5A),
                                                fontSize: 12,
                                                fontFamily: 'other'),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        Get.to(
                                          slotbooking(),
                                          transition: Transition.rightToLeft,
                                        );
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 55,
                                      height: 55,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: MediaQuery.of(context).size.height / 8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                        width: 100,
                                        height: 80,
                                        padding: EdgeInsets.only(left: 10),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "https://img.staticmb.com/mbcontent//images/uploads/2021/12/underground-parking-cars-white-colors.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Multilevel Parking",
                                          style: TextStyle(
                                              color: Color(0xff1D2322),
                                              fontFamily: 'other',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Container(
                                          width: 150,
                                          child: Text(
                                            "PQRJ+PGP, Bridge Market, 17D, Sector 17, Chandigarh, 160017",
                                            style: TextStyle(
                                                color: Color(0xff5A5A5A),
                                                fontSize: 12,
                                                fontFamily: 'other'),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        Get.to(
                                          slotbooking(),
                                          transition: Transition.rightToLeft,
                                        );
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 55,
                                      height: 55,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: MediaQuery.of(context).size.height / 8,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                        width: 100,
                                        height: 80,
                                        padding: EdgeInsets.only(left: 10),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "https://img.staticmb.com/mbcontent//images/uploads/2021/12/underground-parking-cars-white-colors.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Multilevel Parking",
                                          style: TextStyle(
                                              color: Color(0xff1D2322),
                                              fontFamily: 'other',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        Container(
                                          width: 150,
                                          child: Text(
                                            "PQRJ+PGP, Bridge Market, 17D, Sector 17, Chandigarh, 160017",
                                            style: TextStyle(
                                                color: Color(0xff5A5A5A),
                                                fontSize: 12,
                                                fontFamily: 'other'),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        Get.to(
                                          slotbooking(),
                                          transition: Transition.rightToLeft,
                                        );
                                      },
                                      elevation: 0,
                                      hoverElevation: 0,
                                      focusElevation: 0,
                                      highlightElevation: 0,
                                      minWidth: 55,
                                      height: 55,
                                      color: Color(0xff5B72E3),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          onPressed: () async {},
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
              ),
            ])));
  }
}
