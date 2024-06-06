import 'package:flutter/material.dart';

import '../../CustomWidgets/Texts/custom_text.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  Color(0xFF0A8ED9
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:  appSize.height*0.06,
            ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://s3-alpha-sig.figma.com/img/71bf/231b/186d5842921e8329340f4823db113ad2?Expires=1718582400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hmeJifP9mYEqzq8DO1s9OUT3vNZWk8Rc5VvJMeH7tf~D49KzKt0Qactq6ltg~OM0Go~hIqMf8hiSpyUH4R2aii~or-EUxjcs0BfNOETlhxfOZRHooJoVixjKD7LSWocKjnafmhki0fa8NHFBC9kMuVEGmG79eOL4Zwc1Bp4XcrRBzkpfowSv2JAhlJDtv7SyHQXT1gOhPr~y3zf799~LBtoKd1odA7OxKnfHTiZK7WlA0uPDzViyzmoyhn5KPJ0bVVNQqA~wdl5wM3NiYzsSgXd7RqSpC14yV-RlP4kmCRgrQO8R6Fx3lz7g5j1tqbBQRBUFx4thZHDQC0PMep~6QQ__'),
                  radius: appSize.height*0.050
                ),
              ),
              SizedBox(
                width:  appSize.width*0.06,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(title: "Edward Larry", textColor: Colors.white, fontSize: appSize.height*0.021, fontWeight: FontWeight.bold),
                  CustomText(title: "Sahiwla", textColor: Colors.white, fontSize: appSize.height*0.018, fontWeight: FontWeight.normal),

                ],
              ),
              SizedBox(
                width:  appSize.width*0.16,
              ),
              Icon(Icons.edit_calendar,color: Colors.white,),
            ],),
            SizedBox(
              height:  appSize.height*0.06,
            ),
            CustomText(title: "Highlights", textColor: Colors.white, fontSize:appSize.height*0.024, fontWeight: FontWeight.normal),
            SizedBox(
              height:  appSize.height*0.02,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.notifications,size:appSize.height*0.020,color: Colors.white,),
                    CustomText(title: "Notification", textColor: Colors.white, fontSize: appSize.height*0.015, fontWeight: FontWeight.normal)
                  ],
                ),
                SizedBox(
                  width:  appSize.width*0.14,
                ),
                Row(
                  children: [
                    Icon(Icons.messenger_outlined,size: appSize.height*0.020,color: Colors.white,),
                    CustomText(title: "Message", textColor: Colors.white, fontSize: appSize.height*0.015, fontWeight: FontWeight.normal)
                  ],
                ),
                SizedBox(
                  width:  appSize.width*0.16,
                ),
                Row(
                  children: [
                    Icon(Icons.bookmark_border_outlined,size: appSize.height*0.020,color: Colors.white,),
                    CustomText(title: "Payment", textColor: Colors.white, fontSize: appSize.height*0.015, fontWeight: FontWeight.normal)
                  ],
                ),

              ],
            ),
            SizedBox(
              height:  appSize.height*0.04,
            ),
            Divider(color: Colors.white,),
            SizedBox(
              height:  appSize.height*0.04,
            ),
            CustomText(title: "Details", textColor: Colors.white, fontSize:appSize.height*0.024, fontWeight: FontWeight.normal),
            SizedBox(
              height:  appSize.height*0.02,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.safety_check,size:appSize.height*0.022,color: Colors.white,),
                    SizedBox(
                      width:  appSize.width*0.03,
                    ),
                    CustomText(title: "Rant", textColor: Colors.white, fontSize: appSize.height*0.019, fontWeight: FontWeight.normal)
                  ],
                ),
                SizedBox(
                  width:  appSize.width*0.34,
                ),
                Row(
                  children: [
                    Icon(Icons.safety_check,size: appSize.height*0.022,color: Colors.white,),
                    SizedBox(
                      width:  appSize.width*0.03,
                    ),
                    CustomText(title: "Electric Bill", textColor: Colors.white, fontSize: appSize.height*0.018, fontWeight: FontWeight.normal)
                  ],
                ),


              ],
            ),
            SizedBox(
              height:  appSize.height*0.02,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.safety_check,size:appSize.height*0.022,color: Colors.white,),
                    SizedBox(
                      width:  appSize.width*0.03,
                    ),
                    CustomText(title: "Gass Bill", textColor: Colors.white, fontSize: appSize.height*0.019, fontWeight: FontWeight.normal)
                  ],
                ),
                SizedBox(
                  width:  appSize.width*0.27,
                ),
                Row(
                  children: [
                    Icon(Icons.safety_check,size: appSize.height*0.022,color: Colors.white,),
                    SizedBox(
                      width:  appSize.width*0.03,
                    ),
                    CustomText(title: "Gass Bill", textColor: Colors.white, fontSize: appSize.height*0.018, fontWeight: FontWeight.normal)
                  ],
                ),


              ],
            ),
            SizedBox(
              height:  appSize.height*0.04,
            ),
            Divider(color: Colors.white,),
            SizedBox(
              height:  appSize.height*0.04,
            ),
            CustomText(title: "My Accounts", textColor: Colors.white, fontSize:appSize.height*0.022, fontWeight: FontWeight.normal),
            SizedBox(
              height:  appSize.height*0.04,
            ),
            CustomText(title: "Switch to other Account", textColor: Color(0xFFEDC92D), fontSize:appSize.height*0.022, fontWeight: FontWeight.normal),
            SizedBox(
              height:  appSize.height*0.04,
            ),
            Row(
              children: [
                Icon(Icons.logout,color:  Color(0xFFFA0E0E),),
                SizedBox(
                  width:  appSize.width*0.02,
                ),
                CustomText(title: "Logout", textColor: Color(0xFFFA0E0E), fontSize:appSize.height*0.022, fontWeight: FontWeight.normal),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
