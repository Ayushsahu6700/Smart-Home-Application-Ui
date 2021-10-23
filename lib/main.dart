import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Bedroom.dart';
import 'Widgets.dart';
import 'myprofile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue[900],
            child: Container(
              height: 2 * MediaQuery.of(context).size.height / 9,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Control",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Panel",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Hero(
                      tag: "myimg",
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54, blurRadius: 10.0),
                            ],
                            borderRadius: BorderRadius.circular(65.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MyProfile();
                              }));
                            },
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundImage:
                                  AssetImage('Assets/myimgage.jpg'),
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
          Column(
            children: [
              SizedBox(
                height: 2 * MediaQuery.of(context).size.height / 9,
              ),
              Container(
                height: 7 * MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xfff8f6fb),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "All Rooms",
                            style: TextStyle(
                                color: Color(0xff002d67),
                                fontSize: 25,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BedRoom();
                            }));
                          },
                          child: Tiles(
                            title: "Bed room",
                            lights: "4",
                            svg: "Assets/bed.svg",
                          ),
                        ),
                        Tiles(
                          title: "Living room",
                          lights: "2",
                          svg: "Assets/room.svg",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Tiles(
                          title: "Kitchen",
                          lights: "5",
                          svg: "Assets/kitchen.svg",
                        ),
                        Tiles(
                          title: "Bathroom",
                          lights: "1",
                          svg: "Assets/bathtube.svg",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Tiles(
                          title: "Outdoor",
                          lights: "5",
                          svg: "Assets/house.svg",
                        ),
                        Tiles(
                          title: "Balcony",
                          lights: "2",
                          svg: "Assets/balcony.svg",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 15,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset("Assets/bulb.svg"),
                    SvgPicture.asset("Assets/Icon feather-home.svg"),
                    SvgPicture.asset("Assets/Icon feather-settings.svg"),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
