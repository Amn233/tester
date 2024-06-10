import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../CustomWidgets/Texts/text.dart';

class LeaveApplication extends StatefulWidget {
  const LeaveApplication({super.key});

  @override
  State<LeaveApplication> createState() => _LeaveApplicationState();
}

class _LeaveApplicationState extends State<LeaveApplication> {
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
                  child: InkWell(
                      onTap: (){
                        context.pushReplacement("/dashboard");
                      },
                      child: Icon(Icons.arrow_back,color: Colors.white,))
                      ),
              Positioned(
                top: appSize.height * 0.250,
                left: appSize.width * 0.1,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/Rectangle 1038 (1).png",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: appSize.height * 0.04,
                        left: appSize.width * 0.06,
                      ),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text(
                                  title: "Leave Type",
                                  textColor: Color(0xFF939393),
                                  fontSize: appSize.height * 0.016,
                                  fontWeight: FontWeight.normal),
                              SizedBox(
                                height: appSize.height * 0.01,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assets/Rectangle 122.png"),
                                  Positioned(
                                    top: appSize.height * 0.01,
                                    left: appSize.width * 0.03,
                                    child: text(
                                        title: "Annual leave",
                                        textColor: Color(0xFF000000),
                                        fontSize: appSize.height * 0.016,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Positioned(
                                    top: appSize.height * 0.01,
                                    left: appSize.width * 0.600,
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Color(0xFF0175B8),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: appSize.height * 0.01,
                              ),
                              Row(
                                children: [
                                  text(
                                      title: "Start Date",
                                      textColor: Color(0xFF939393),
                                      fontSize: appSize.height * 0.016,
                                      fontWeight: FontWeight.normal),
                                  SizedBox(
                                    width: appSize.width * 0.2,
                                  ),
                                  text(
                                      title: "End Date",
                                      textColor: Color(0xFF939393),
                                      fontSize: appSize.height * 0.016,
                                      fontWeight: FontWeight.normal),
                                ],
                              ),
                              SizedBox(
                                height: appSize.height * 0.01,
                              ),
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                          "assets/Rectangle 122 (1).png"),
                                      Positioned(
                                        top: appSize.height * 0.01,
                                        left: appSize.width * 0.03,
                                        child: Row(
                                          children: [
                                            text(
                                                title: "01 Feb 2024",
                                                textColor: Color(0xFF000000),
                                                fontSize:
                                                    appSize.height * 0.016,
                                                fontWeight: FontWeight.normal),
                                            SizedBox(
                                              width: appSize.width * 0.02,
                                            ),
                                            Icon(
                                              Icons.calendar_month,
                                              color: Color(0xFF0175B8),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: appSize.height * 0.01,
                                        left: appSize.width * 0.600,
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          color: Color(0xFF0175B8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: appSize.width * 0.02,
                                  ),
                                  Stack(
                                    children: [
                                      Image.asset(
                                          "assets/Rectangle 122 (1).png"),
                                      Positioned(
                                        top: appSize.height * 0.01,
                                        left: appSize.width * 0.03,
                                        child: Row(
                                          children: [
                                            text(
                                                title: "08 Feb 2024",
                                                textColor: Color(0xFF000000),
                                                fontSize:
                                                    appSize.height * 0.016,
                                                fontWeight: FontWeight.normal),
                                            SizedBox(
                                              width: appSize.width * 0.02,
                                            ),
                                            Icon(
                                              Icons.calendar_month,
                                              color: Color(0xFF0175B8),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: appSize.height * 0.01,
                                        left: appSize.width * 0.600,
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          color: Color(0xFF0175B8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: appSize.height * 0.01,
                              ),
                              text(
                                  title: "Description",
                                  textColor: Color(0xFF939393),
                                  fontSize: appSize.height * 0.016,
                                  fontWeight: FontWeight.normal),
                              SizedBox(
                                height: appSize.height * 0.01,
                              ),
                              Stack(
                                children: [
                                  Image.asset("assets/Rectangle 122.png"),
                                  Positioned(
                                    top: appSize.height * 0.01,
                                    left: appSize.width * 0.03,
                                    child: text(
                                        title: "Write Reason here...",
                                        textColor: Color(0xFF000000),
                                        fontSize: appSize.height * 0.016,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: appSize.height * 0.03,
                          ),
                          Center(
                            child: Image.asset("assets/request.png"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: appSize.height * 0.05,
                left: appSize.height * 0.115,
                child: text(
                    title: "Leave Application",
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
                    Image.asset("assets/Group9.png"),
                    text(
                        title: "New leave request",
                        textColor: Colors.white,
                        fontSize: appSize.height * 0.019,
                        fontWeight: FontWeight.bold),
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
