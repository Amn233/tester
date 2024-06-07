import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp/CustomWidgets/Texts/text.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      context.pushReplacement("/login");
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    var appSize=  MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         text(title: "Employee self service",
             textColor: Color(0xFF0175B8),
             fontSize:appSize.height*0.038,
             fontWeight: FontWeight.bold),
         SizedBox(height: appSize.height*0.02,),
         Center(child: Image(image: AssetImage("assets/logo 1.png"))),
       ], 
      ),
    );
    
  }
}
