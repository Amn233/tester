import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../CustomWidgets/Texts/text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var appSize=  MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: appSize.height*0.0,
            left:appSize.height*0.0-4,
            child: Image.asset("assets/Group1.png"),
          ),
          Positioned(
            top: appSize.height*0.0,
            right: appSize.height*0.0,
            child: Image.asset("assets/Group2.png"),
          ),
          Positioned(
            bottom:appSize.height*0.0,
            left: appSize.height*0.0,
            child: Image.asset("assets/Group3.png"),
          ),
          Positioned(
            bottom: appSize.height*0.0,
            right:appSize.height*0.0,
            child: Image.asset("assets/Group4.png"),
          ),
          Padding(
            padding: EdgeInsets.all(appSize.height*0.01),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height:appSize.height*0.213),
                text(title: "Employee self service",
                    textColor: Color(0xFFEC2229),
                    fontSize:appSize.height*0.038,
                    fontWeight: FontWeight.bold),
                text(title: "Login",
                    textColor: Color(0xFF0175B8),
                    fontSize:appSize.height*0.025,
                    fontWeight: FontWeight.bold,
                ),
                SizedBox(height:appSize.height*0.03),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'johndoe@gmail.com',
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    prefixIcon:Icon( Icons.email_outlined),
                  ),
                ),
                SizedBox(height:appSize.height*0.020),
                TextField(
                  decoration: InputDecoration(
                    hintText: '********',
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    prefixIcon:Icon( Icons.lock_outline),
                    suffixIcon: Icon( Icons.remove_red_eye),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: appSize.height*0.015),
                Padding(
                  padding: EdgeInsets.all(appSize.height*0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value:isChecked, onChanged:(bool? value){
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                      text(title: "Remember password",
                          textColor: Color(0xFF939393),
                          fontSize:appSize.height*0.017,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                ),
               Container(
                 height: appSize.height*0.050 ,
                 width: appSize.width*0.930,
                 color: Color(0xFF0175B8),
                 child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
               ),
                Padding(
                  padding:EdgeInsets.all(appSize.height*0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      text(title: "Forget password?",
                          textColor: Color(0xFF0175B8),
                          fontSize:appSize.height*0.017,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                ),
                text(title: "By signing in you are agreeing to our",
                    textColor: Color(0xFF939393),
                    fontSize:appSize.height*0.017,
                    fontWeight: FontWeight.normal),
                text(title: "term and privacy policy",
                    textColor: Color(0xFF0175B8),
                    fontSize:appSize.height*0.017,
                    fontWeight: FontWeight.bold),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
