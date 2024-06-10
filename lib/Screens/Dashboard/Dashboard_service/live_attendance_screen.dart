import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../CustomWidgets/Texts/text.dart';

class live_attendance extends StatefulWidget {
  const live_attendance({super.key});

  @override
  State<live_attendance> createState() => _live_attendanceState();
}

class _live_attendanceState extends State<live_attendance> {
  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF1F9FF),
      body: SingleChildScrollView(
        child: Container(
          height: appSize.height * 1.1,
          child: Stack(
            children: [
              Positioned(
                top: appSize.height * 0.0 - 8,
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
                  left: appSize.height * 0.0 - 180,
                  width: appSize.width,
                  child: IconButton(
                      onPressed: () {
                        context.pushReplacement("/dashboard");
                      },
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white)),
              Positioned(
                  top: appSize.height * 0.03,
                  right: appSize.height * 0.0-180,
                  width: appSize.width,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                      color: Colors.white)),
              Positioned(
                top: appSize.height * 0.250,
                left: appSize.width * 0.1,
                child: Stack(children: [
                  Image.asset(
                    "assets/Group12.png",
                  ),

                  Positioned(
                    top: appSize.height * 0.03,
                    left: appSize.width * 0.180,
                    child: Column(
                      children: [
                        text(
                            title: "08:00AM - 07:00PM",
                            textColor: Color(0xFF939393),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        SizedBox(
                          height: appSize.height * 0.01,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/Group13.png",
                              fit: BoxFit.fitWidth,
                            ),
                            SizedBox(
                              width: appSize.width * 0.02,
                            ),
                            Image.asset(
                              "assets/Group14.png",
                              fit: BoxFit.fitWidth,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: appSize.height * 0.02,
                        ),
                        Stack(children: [
                          Image.asset("assets/Switch On.png"),
                          Positioned(
                            top: appSize.height * 0.01,
                            left: appSize.width * 0.04,
                            child: Image.asset("assets/Time.png"),
                          ),
                          Positioned(
                            top: appSize.height * 0.01,
                            left: appSize.width * 0.130,
                            child: text(
                                title: "Slide to start break",
                                textColor: Color(0xFF939393),
                                fontSize: 11,
                                fontWeight: FontWeight.normal),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ]),
              ),
              Positioned(
                  top: appSize.height * 0.440,
                  left: appSize.height * 0.04,
                  child: text(
                      title: "View Attendance Log",
                      textColor: Color(0xFF939393),
                      fontSize: appSize.height * 0.025,
                      fontWeight: FontWeight.bold)),
              Positioned(
                top: appSize.height * 0.480,
                left: appSize.width * 0.1,
                child: Stack(children: [
                  Image.asset(
                    "assets/Rectangle 1038.png",
                  ),
                  Positioned(
                    top: appSize.height * 0.03,
                    left: appSize.width * 0.03,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/arrowback.png"),
                            SizedBox(width: appSize.width * 0.06),
                            text(
                                title: "Dec",
                                textColor: Color(0xFFC9CED3),
                                fontSize: appSize.height * 0.023,
                                fontWeight: FontWeight.bold),
                            SizedBox(width: appSize.width * 0.06),
                            text(
                                title: "January",
                                textColor: Color(0xFFEC242A),
                                fontSize: appSize.height * 0.023,
                                fontWeight: FontWeight.bold),
                            SizedBox(width: appSize.width * 0.06),
                            text(
                                title: "Feb",
                                textColor: Color(0xFFC9CED3),
                                fontSize: appSize.height * 0.023,
                                fontWeight: FontWeight.bold),
                            SizedBox(width: appSize.width * 0.06),
                            Image.asset("assets/arrow.png"),
                          ],
                        ),
                        SizedBox(height: appSize.height * 0.02),
                        Image.asset("assets/graph.png"),
                      ],
                    ),
                  ),
                ]),
              ),
              Positioned(
                top: appSize.height * 0.625,
                left: appSize.width * 0.08,
                child: Stack(children: [
                  Image.asset(
                    "assets/Group16.png",
                  ),
                  Positioned(
                    top: appSize.height * 0.02,
                    left: appSize.width * 0.04,
                    child: Row(
                      children: [
                        Stack(children: [
                          Image.asset("assets/Group17.png"),
                          Positioned(
                            top: appSize.height * 0.02,
                            left: appSize.width * 0.05,
                            child: Image.asset("assets/01_Mon.png"),
                          ),
                        ]),
                        SizedBox(
                          width: appSize.width * 0.03,
                        ),
                        Column(
                          children: [
                            text(
                                title: "check in check out",
                                textColor: Color(0xFF939393),
                                fontSize: appSize.height * 0.021,
                                fontWeight: FontWeight.bold),
                            text(
                                title: "09:00AM. 6:40PM",
                                textColor: Color(0xFF939393),
                                fontSize: appSize.height * 0.020,
                                fontWeight: FontWeight.normal),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Positioned(
                top: appSize.height * 0.755,
                left: appSize.width * 0.08,
                child: Stack(children: [
                  Image.asset(
                    "assets/Group16.png",
                  ),
                  Positioned(
                    top: appSize.height * 0.02,
                    left: appSize.width * 0.04,
                    child: Row(
                      children: [
                        Stack(children: [
                          Image.asset("assets/Group18.png"),
                          Positioned(
                            top: appSize.height * 0.02,
                            left: appSize.width * 0.05,
                            child: Image.asset("assets/02_Tue.png"),
                          ),
                        ]),
                        SizedBox(
                          width: appSize.width * 0.03,
                        ),
                        Column(
                          children: [
                            text(
                                title: "check in check out",
                                textColor: Color(0xFF939393),
                                fontSize: appSize.height * 0.021,
                                fontWeight: FontWeight.bold),
                            text(
                                title: "09:00AM. 6:40PM",
                                textColor: Color(0xFF939393),
                                fontSize: appSize.height * 0.020,
                                fontWeight: FontWeight.normal),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Positioned(
                top: appSize.height * 0.885,
                left: appSize.width * 0.08,
                child: Stack(children: [
                  Image.asset(
                    "assets/Group16.png",
                  ),
                  Positioned(
                    top: appSize.height * 0.02,
                    left: appSize.width * 0.04,
                    child: Row(
                      children: [
                        Stack(children: [
                          Image.asset("assets/Group18.png"),
                          Positioned(
                            top: appSize.height * 0.02,
                            left: appSize.width * 0.05,
                            child: Image.asset("assets/03_Wed.png"),
                          ),
                        ]),
                        SizedBox(
                          width: appSize.width * 0.03,
                        ),
                        Column(
                          children: [
                            text(
                                title: "check in check out",
                                textColor: Color(0xFF939393),
                                fontSize: appSize.height * 0.021,
                                fontWeight: FontWeight.bold),
                            text(
                                title: "09:00AM. 6:40PM",
                                textColor: Color(0xFF939393),
                                fontSize: appSize.height * 0.020,
                                fontWeight: FontWeight.normal),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Positioned(
                top: appSize.height * 0.05,
                left: appSize.height * 0.110,
                child: text(
                    title: "  Live Attendance",
                    textColor: Colors.white,
                    fontSize: appSize.height * 0.028,
                    fontWeight: FontWeight.bold),
              ),
              Positioned(
                top: appSize.height * 0.104,
                left: appSize.height * 0.155,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/Group7.png"),
                    text(
                        title: "02:13 PM",
                        textColor: Colors.white,
                        fontSize: appSize.height * 0.020,
                        fontWeight: FontWeight.bold),
                    text(
                        title: "Tue, 30 Jan 2024",
                        textColor: Colors.white,
                        fontSize: appSize.height * 0.020,
                        fontWeight: FontWeight.normal),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
