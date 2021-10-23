import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LightTile extends StatelessWidget {
  Color color;
  String text;
  String svgimg;
  LightTile({required this.color, required this.text, required this.svgimg});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                svgimg,
                width: 30,
                height: 30,
                color: color == Colors.white ? Color(0xff093b7b) : Colors.white,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color:
                      color == Colors.white ? Color(0xff093b7b) : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tiles extends StatelessWidget {
  String svg, title, lights;
  Tiles({required this.lights, required this.svg, required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 5.7,
        width: MediaQuery.of(context).size.width / 2.7,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                  offset: Offset(0, 5)),
            ],
            borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                svg,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.brown[900],
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Text(
                      "$lights Lights",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
