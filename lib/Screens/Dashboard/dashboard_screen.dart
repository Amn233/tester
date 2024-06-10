import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../CustomWidgets/Texts/text.dart';

class dashBoard_screen extends StatefulWidget {
  const dashBoard_screen({super.key});

  @override
  State<dashBoard_screen> createState() => _dashBoard_screenState();
}

class _dashBoard_screenState extends State<dashBoard_screen> {
  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF1F9FF),
      body: Stack(
        children: [
          Positioned(
            top: appSize.height * 0.0-8,
            left: appSize.height * 0.0,
            width: appSize.width,
            child: Image.asset(
              "assets/Rectangle 1036.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: appSize.height * 0.0,
            left: appSize.height * 0.0 - 1,
            child: Image.asset(
              "assets/Group5.png",
            ),
          ),

          Positioned(
            top: appSize.height * 0.0,
            right: appSize.height * 0.0 - 1,
            child: Image.asset("assets/Group6.png"),
          ),
          Positioned(
              top: appSize.height * 0.03,
              right: appSize.height * 0.0-180,
              width: appSize.width,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                  color: Colors.white)),
          Positioned(
            top: appSize.height * 0.265,
            left: appSize.width * 0.1,
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    context.push("/live");
                  },
                  child: Stack(children: [
                    Image.asset(
                      "assets/Rectangle.png",
                    ),
                    Positioned(
                      top: appSize.height * 0.03,
                      left: appSize.width * 0.1,
                      child: Image.asset(
                        "assets/Group7.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                        top: appSize.height * 0.11,
                        left: appSize.width * 0.03,
                        child: text(
                            title: "Live Attendance",
                            textColor: Color(0xFF0175B8),
                            fontSize: appSize.height * 0.019,
                            fontWeight: FontWeight.bold))
                  ]),
                ),
                SizedBox(
                  width: appSize.width * 0.03,
                ),
                Stack(children: [
                  Image.asset(
                    "assets/Rectangle.png",
                  ),
                  Positioned(
                    top: appSize.height * 0.03,
                    left: appSize.width * 0.1,
                    child: Image.asset(
                      "assets/Group8.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                      top: appSize.height*0.11,
                      left: appSize.width * 0.04,
                      child: text(
                          title: "My Attendance",
                          textColor: Color(0xFF0175B8),
                          fontSize: appSize.height*0.019,
                          fontWeight: FontWeight.bold))
                ]),
              ],
            ),
          ),
          Positioned(
            top: appSize.height * 0.457,
            left: appSize.width * 0.1,
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    context.push("/leave");
                  },
                  child: Stack(
                    children: [
                      Image.asset(
                      "assets/Rectangle.png",
                    ),
                      Positioned(
                        top: appSize.height * 0.03,
                        left: appSize.width * 0.1,
                        child: Image.asset(
                          "assets/Group9.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Positioned(
                          top: appSize.height*0.11,
                          left: appSize.width * 0.03,
                          child: text(
                              title: "Leave Application",
                              textColor: Color(0xFF0175B8),
                              fontSize: appSize.height*0.019,
                              fontWeight: FontWeight.bold))
                  ]),
                ),
                SizedBox(
                  width: appSize.width * 0.03,
                ),
                Stack(
                    children: [
                      Image.asset(
                        "assets/Rectangle.png",
                      ),
                      Positioned(
                        top: appSize.height * 0.03,
                        left: appSize.width * 0.1,
                        child: Image.asset(
                          "assets/Group8.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Positioned(
                          top: appSize.height*0.11,
                          left: appSize.width * 0.03,
                          child: text(
                              title: "Insurances Plans",
                              textColor: Color(0xFF0175B8),
                              fontSize: appSize.height*0.019,
                              fontWeight: FontWeight.bold))
                    ]),
              ],
            ),
          ),
          Positioned(
            top: appSize.height * 0.653,
            left: appSize.width * 0.1,
            child:  Stack(
                children: [
                  Image.asset(
                    "assets/Rectangle.png",
                  ),
                  Positioned(
                    top: appSize.height * 0.03,
                    left: appSize.width * 0.1,
                    child: Image.asset(
                      "assets/Group11.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                      top: appSize.height*0.11,
                      left: appSize.width * 0.03,
                      child: text(
                          title: "Company policies",
                          textColor: Color(0xFF0175B8),
                          fontSize: appSize.height*0.019,
                          fontWeight: FontWeight.bold))
                ]),
          ),
          Positioned(
              top: appSize.height * 0.05,
              left: appSize.height * 0.09,
              child: text(
                  title: "Employee self service",
                  textColor: Colors.white,
                  fontSize: appSize.height*0.028,
                  fontWeight: FontWeight.bold)),
          Positioned(
              top: appSize.height * 0.120,
              left: appSize.height * 0.100,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("assets/person.png"),
                  ),
                  SizedBox(width: appSize.height*0.01,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(
                          title: "Name Surname",
                          textColor: Colors.white,
                          fontSize: appSize.height*0.021,
                          fontWeight: FontWeight.bold),
                      text(
                          title: "premium star technology",
                          textColor: Colors.white,
                          fontSize: appSize.height*0.016,
                          fontWeight: FontWeight.normal),
                      text(
                          title: "(Company Employee)",
                          textColor: Colors.white,
                          fontSize: appSize.height*0.016,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
