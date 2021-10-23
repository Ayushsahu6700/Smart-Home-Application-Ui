import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Widgets.dart';

class BedRoom extends StatefulWidget {
  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  @override
  Color color = Color(0xffebd094);
  double slider = 1;
  Widget _bulbColor({
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, top: 16.0, bottom: 16.0),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }

  Widget _SceneColor(
      {required Color color1,
      required Color color2,
      required Color color3,
      required Color color4,
      required String svg,
      required String text}) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, top: 16.0, bottom: 7.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 65,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              color1,
              color2,
              color3,
              color4,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SvgPicture.asset(
                  svg,
                  height: 25,
                  width: 25,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue[900],
            child: Stack(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Stack(children: [
                        Positioned(
                          top: 105,
                          right: 42,
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: slider == 0.0
                                  ? Colors.black26
                                  : color.withOpacity(1),
                              gradient: RadialGradient(
                                colors: [
                                  slider == 0.0
                                      ? Colors.black26
                                      : color.withOpacity(1),
                                  slider == 0.0
                                      ? Colors.black26
                                      : color.withOpacity(0.5 * slider),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          right: 57,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: slider == 0.0
                                  ? Colors.black26
                                  : color.withOpacity(1),
                            ),
                          ),
                        ),
                        Container(
                          height: 150,
                          child: SvgPicture.asset("Assets/Group 38.svg"),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              Container(
                height: 2 * MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: SvgPicture.asset(
                                    "Assets/Icon ionic-md-arrow-round-back.svg",
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ),
                              Text(
                                "Bed",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Text(
                            "Room",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w700),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "4 Lights",
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 4,
                  child: Row(
                    children: [
                      LightTile(
                        svgimg: "Assets/surface1.svg",
                        color: Colors.white,
                        text: "Main Light",
                      ),
                      LightTile(
                        svgimg: "Assets/furniture-and-household.svg",
                        color: Color(0xff093b7b),
                        text: "Desk Lights",
                      ),
                      LightTile(
                        svgimg: "Assets/bed (1).svg",
                        color: Colors.white,
                        text: "Bed Lights",
                      ),
                    ],
                  ))
            ]),
          ),
          Column(
            children: [
              SizedBox(
                height: 2 * MediaQuery.of(context).size.height / 6,
              ),
              Container(
                height: 4 * MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xfff8f6fb),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Intensity",
                        style: TextStyle(
                            color: Color(0xff002d67),
                            fontSize: 25,
                            fontWeight: FontWeight.w800),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "Assets/solution2.svg",
                              height: 30,
                              width: 30,
                            ),
                            Container(
                              width:
                                  3.8 * MediaQuery.of(context).size.width / 5,
                              child: CupertinoSlider(
                                value: slider,
                                activeColor: Color(0xfffdd853),
                                onChanged: (newvalue) {
                                  setState(() => slider = newvalue);
                                },
                                max: 1.0,
                                min: 0.0,
                                divisions: 6,
                              ),
                            ),
                            SvgPicture.asset(
                              "Assets/solution.svg",
                              height: 37,
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Colors",
                        style: TextStyle(
                            color: Color(0xff002d67),
                            fontSize: 25,
                            fontWeight: FontWeight.w800),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  color = Color(0xffff9b9b);
                                });
                              },
                              child: _bulbColor(color: Color(0xffff9b9b))),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  color = Color(0xff94eb9b);
                                });
                              },
                              child: _bulbColor(color: Color(0xff94eb9b))),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  color = Color(0xff94caeb);
                                });
                              },
                              child: _bulbColor(color: Color(0xff94caeb))),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  color = Color(0xffa594eb);
                                });
                              },
                              child: _bulbColor(color: Color(0xffa594eb))),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  color = Color(0xffde94eb);
                                });
                              },
                              child: _bulbColor(color: Color(0xffde94eb))),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  color = Color(0xffebd094);
                                });
                              },
                              child: _bulbColor(color: Color(0xffebd094))),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                  child: SvgPicture.asset("Assets/+.svg")),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Scenes",
                        style: TextStyle(
                            color: Color(0xff002d67),
                            fontSize: 25,
                            fontWeight: FontWeight.w800),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _SceneColor(
                              color1: Color(0xffffbc95),
                              color2: Color(0xffffaf95),
                              color3: Color(0xffffa498),
                              color4: Color(0xffff9b9b),
                              svg: "Assets/surface2.svg",
                              text: "Birthday"),
                          _SceneColor(
                              color1: Color(0xffd693eb),
                              color2: Color(0xffc593eb),
                              color3: Color(0xffb393eb),
                              color4: Color(0xffa593eb),
                              svg: "Assets/surface2.svg",
                              text: "Party"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _SceneColor(
                              color1: Color(0xff93dceb),
                              color2: Color(0xff93d5eb),
                              color3: Color(0xff93cfeb),
                              color4: Color(0xff93caeb),
                              svg: "Assets/surface2.svg",
                              text: "Relax"),
                          _SceneColor(
                              color1: Color(0xffbbeb92),
                              color2: Color(0xffa9e693),
                              color3: Color(0xff96e193),
                              color4: Color(0xff89dd94),
                              svg: "Assets/surface2.svg",
                              text: "Party"),
                        ],
                      ),
                    ],
                  ),
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
                    SvgPicture.asset("Assets/Icon feather-settings.svg")
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: (2 * MediaQuery.of(context).size.height / 6) - 15,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.black54, blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset(
                    "Assets/Icon awesome-power-off.svg",
                    width: 30,
                    height: 30,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
