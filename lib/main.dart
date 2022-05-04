import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/maki_icons.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/web_symbols_icons.dart';
import 'package:fluttericon/zocial_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(-6.205939, 106.845642), zoom: 10.0);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  static final List<Widget> assetImage = [
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: const Image(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/component/website8-scaled.jpg')),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: const Image(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/component/17.jpg')),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: const Image(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/component/baptis.jpg')),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: const Image(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/component/the-senior.jpg')),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: const Image(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/component/aLPHA-scaled.jpg')),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // routes: {'/': (ctx) => MyApp()},
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: HexColor("#adb5bd"),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100.0),
              child: AppBar(
                backgroundColor: HexColor("#0077B6"),
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin:
                        const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                    child: Row(
                      children: [
                        const Image(
                            width: 50,
                            image: AssetImage(
                                "assets/images/component/logo-gbi-citytower-ok-300x132.png")),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "GEREJA BETHEL INDONESIA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Roboto",
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "THE CITY TOWER",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Roboto",
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "JAKARTA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Roboto",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: TabBar(
                  //padding: EdgeInsets.symmetric(vertical: ),
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 2.5, color: HexColor("#CAF0F8")))),
                  indicatorColor: Colors.white,
                  indicatorWeight: 2,
                  labelColor: Colors.white,
                  overlayColor: MaterialStateProperty.all(HexColor("#48CAE4")),
                  tabs: const [
                    Tab(
                      child: Text(
                        "Home",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text("Pelayanan",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text("Program",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text("Komunitas",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text("Resource",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text("Tautan",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ),
            body:
                // Stack(
                //   children: <Widget>[
                //     Container(
                //       color: Colors.red,
                //       width: 300,
                //       height: 300,
                //       child: GoogleMap(
                //         initialCameraPosition: _kGooglePlex,
                //         mapType: MapType.normal,
                //         onMapCreated: _onMapCreated,
                //       ),
                //     ),
                //   ],
                // )
                TabBarView(children: [
              SingleChildScrollView(
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: CarouselSlider(
                        items: assetImage.toList(),
                        options: CarouselOptions(
                          aspectRatio: 1.5,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 10),
                          enlargeCenterPage: true,
                        )),
                  ),
                  jadwalIbadah(),
                  const SizedBox(
                    height: 10,
                  ),
                  locationChurch()
                ]),
              ),
              Container(
                child: Text("Pelayanan"),
              ),
              Container(
                child: Text("Program"),
              ),
              Container(
                child: Text("Komunitas"),
              ),
              Container(
                child: Text("Resource"),
              ),
              Container(
                child: Text("Tautan"),
              ),
            ])),
      ),
    );
  }

  Card jadwalIbadah() {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: HexColor("#0077B6"),
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          children: [
            const Text(
              "Ikuti ibadah online kami dalam:",
              style: TextStyle(
                  fontFamily: "OpenSans", fontSize: 20, color: Colors.white),
            ),
            const Text(
              "Selamat beribadah Tuhan Yesus memberkati",
              style: TextStyle(color: Colors.white54),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(HexColor("#d00000"))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesome.youtube,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Link Streaming",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "OpenSans"),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(HexColor("#023E8A"))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(FontAwesome.link_ext, color: Colors.white),
                  SizedBox(width: 10),
                  Text("Link registrasi Ibadah Raya Onsite",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "OpenSans"))
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(HexColor("#38b000"))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(FontAwesome.videocam, color: Colors.white),
                  SizedBox(width: 10),
                  Text("Jadwal Ibadah Via Zoom",
                      style: TextStyle(
                          color: Colors.white, fontFamily: "OpenSans"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Card locationChurch() {
    return Card(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              Text(" - ", style: TextStyle(color: Colors.red, fontSize: 15)),
              Text(
                "GBI THE CITY TOWER JAKARTA",
                style: TextStyle(
                    fontFamily: "SourceSerifPro",
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              Text(" - ", style: TextStyle(color: Colors.red, fontSize: 15))
            ]),
            const Text("OUR LOCATION ON MAP",
                style: TextStyle(fontSize: 25, fontFamily: "SourceSerifPro")),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                SizedBox(
                  width: 300,
                  height: 300,
                  child: GoogleMap(
                    initialCameraPosition: _kGooglePlex,
                    mapType: MapType.normal,
                    markers: [-6.1991132, -4.3434],
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}
