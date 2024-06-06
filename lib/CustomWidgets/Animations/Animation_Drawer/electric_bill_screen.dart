import 'package:flutter/material.dart';
import 'package:newsapp/CustomWidgets/Texts/text.dart';
class ElectricScreen extends StatelessWidget {
  const ElectricScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding:  EdgeInsets.all(appSize.height*0.016),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: appSize.height*0.073,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Electric Bill",
                  style:  TextStyle(
                      fontSize: appSize.height * 0.045,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),),
                SizedBox(width:appSize.height * 0.01 ,),
                Text("Un Pad",
                  style:  TextStyle(
                      fontSize: appSize.height * 0.021,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),)
              ],
            ),
            SizedBox(height: appSize.height*0.053,),
            text(title: "Current", textColor: Colors.black, fontSize: appSize.height * 0.021, fontWeight: FontWeight.normal),
            SizedBox(height: appSize.height*0.033,),
            Row(
              children: [
                text(title: "Month", textColor: Colors.black, fontSize: appSize.height * 0.021, fontWeight: FontWeight.w400),
                SizedBox(width:appSize.height * 0.05 ,),
                text(title: "Amount", textColor: Colors.black, fontSize: appSize.height * 0.021, fontWeight: FontWeight.normal),
                SizedBox(width:appSize.height * 0.08 ,),
                text(title: "Date", textColor: Colors.black, fontSize: appSize.height * 0.021, fontWeight: FontWeight.normal),
                SizedBox(width:appSize.height * 0.07 ,),
                text(title: "States", textColor: Colors.black, fontSize: appSize.height * 0.021, fontWeight: FontWeight.normal),
              ],
            ),
            Container(

              width:  390,
              height: 50,
              color: Color(0xFFD9D9D9
              ),
              child: Row(
                children: [
                  SizedBox(width:appSize.height * 0.01 ,),
                  text(title: "Jan", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                  SizedBox(width:appSize.height * 0.08 ,),
                  text(title: "2000Rs", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                  SizedBox(width:appSize.height * 0.07 ,),
                  text(title: "02/01/2023", textColor: Colors.white, fontSize: appSize.height * 0.018, fontWeight: FontWeight.normal),
                  SizedBox(width:appSize.height * 0.05 ,),
                  text(title: "Pad", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                ],
              ),
            ),
            SizedBox(height: appSize.height*0.059,),
            text(title: "Privious Details", textColor: Colors.black, fontSize: appSize.height * 0.021, fontWeight: FontWeight.normal),
            SizedBox(height: appSize.height*0.035,),
            Row(
              children: [
                text(title: "Month", textColor: Colors.black, fontSize: appSize.height * 0.021, fontWeight: FontWeight.normal),
                SizedBox(width:appSize.height * 0.05 ,),
                text(title: "Amount", textColor: Colors.black, fontSize: appSize.height * 0.021, fontWeight: FontWeight.normal),
                SizedBox(width:appSize.height * 0.08 ,),
                text(title: "Date", textColor: Colors.black, fontSize: appSize.height * 0.021, fontWeight: FontWeight.normal),
                SizedBox(width:appSize.height * 0.07 ,),
                text(title: "States", textColor: Colors.black, fontSize: appSize.height * 0.021, fontWeight: FontWeight.normal),
              ],
            ),
            Container(

              width:  399,
              height: 370,
              color: Color(0xFFD9D9D9
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width:appSize.height * 0.01 ,),
                      text(title: "Jan", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.08 ,),
                      text(title: "2000Rs", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.07 ,),
                      text(title: "02/01/2023", textColor: Colors.white, fontSize: appSize.height * 0.018, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.05 ,),
                      text(title: "Pad", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(height: appSize.height*0.030,),
                  Row(
                    children: [
                      SizedBox(width:appSize.height * 0.01 ,),
                      text(title: "Jan", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.08 ,),
                      text(title: "2000Rs", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.07 ,),
                      text(title: "02/01/2023", textColor: Colors.white, fontSize: appSize.height * 0.018, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.05 ,),
                      text(title: "Pad", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(height: appSize.height*0.030,),
                  Row(
                    children: [
                      SizedBox(width:appSize.height * 0.01 ,),
                      text(title: "Jan", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.08 ,),
                      text(title: "2000Rs", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.07 ,),
                      text(title: "02/01/2023", textColor: Colors.white, fontSize: appSize.height * 0.018, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.05 ,),
                      text(title: "Pad", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(height: appSize.height*0.030,),
                  Row(
                    children: [
                      SizedBox(width:appSize.height * 0.01 ,),
                      text(title: "Jan", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.08 ,),
                      text(title: "2000Rs", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.07 ,),
                      text(title: "02/01/2023", textColor: Colors.white, fontSize: appSize.height * 0.018, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.05 ,),
                      text(title: "Pad", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(height: appSize.height*0.030,),
                  Row(
                    children: [
                      SizedBox(width:appSize.height * 0.01 ,),
                      text(title: "Jan", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.08 ,),
                      text(title: "2000Rs", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.07 ,),
                      text(title: "02/01/2023", textColor: Colors.white, fontSize: appSize.height * 0.018, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.05 ,),
                      text(title: "Pad", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(height: appSize.height*0.030,),
                  Row(
                    children: [
                      SizedBox(width:appSize.height * 0.01 ,),
                      text(title: "Jan", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.08 ,),
                      text(title: "2000Rs", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.07 ,),
                      text(title: "02/01/2023", textColor: Colors.white, fontSize: appSize.height * 0.018, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.05 ,),
                      text(title: "Pad", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(height: appSize.height*0.030,),
                  Row(
                    children: [
                      SizedBox(width:appSize.height * 0.01 ,),
                      text(title: "Jan", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.08 ,),
                      text(title: "2000Rs", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.07 ,),
                      text(title: "02/01/2023", textColor: Colors.white, fontSize: appSize.height * 0.018, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.05 ,),
                      text(title: "Pad", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                    ],
                  ),
                  SizedBox(height: appSize.height*0.030,),
                  Row(
                    children: [
                      SizedBox(width:appSize.height * 0.01 ,),
                      text(title: "Jan", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.08 ,),
                      text(title: "2000Rs", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.07 ,),
                      text(title: "02/01/2023", textColor: Colors.white, fontSize: appSize.height * 0.018, fontWeight: FontWeight.normal),
                      SizedBox(width:appSize.height * 0.05 ,),
                      text(title: "Pad", textColor: Colors.white, fontSize: appSize.height * 0.019, fontWeight: FontWeight.normal),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
