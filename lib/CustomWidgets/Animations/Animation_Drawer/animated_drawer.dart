import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp/Screens/Home_Screen/home_screen.dart';
import 'package:newsapp/Screens/ProfileScreens/profile_screen.dart';
class animated_drawer extends StatefulWidget {
  const animated_drawer({super.key});

  @override
  State<animated_drawer> createState() => _animated_drawerState();
}

class _animated_drawerState extends State<animated_drawer> with TickerProviderStateMixin {
  late AnimationController animationController ;

  void toggle(){
   animationController.isCompleted ?
   animationController.reverse() :
   animationController.forward();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 250));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context,Widget? _){
          var appSize = MediaQuery.of(context).size;
          var scale=(1-animationController.value*0.3);
          var maxside=MediaQuery.of(context).size.width;
          var side=(maxside*(animationController.value*0.6));
          return GestureDetector(
            onTap: toggle,
            child: Stack(
              children: [
                Material(
                  color: Color(0xFF0A8ED9
                  ),
                  child: SafeArea(
                      child:Theme(
                        data: ThemeData(
                          brightness: Brightness.dark
                        ),
                        child: SizedBox(
                          width: double.infinity,
                         height: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: appSize.width*0.448,
                                    height: appSize.height*0.05,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(21),bottomRight: Radius.circular(21))
                                    ),
                                    child:ListTile(
                                        leading: Icon(Icons.home,color: Color(0xFF0A8ED9
                                        ),),
                                        title: Text("Home",style: TextStyle(color:Color(0xFF0A8ED9
                                        ),),),),
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: appSize.height * 0.03,
                              ),
                             InkWell(
                               onTap: (){
                                 context.push("/profile");
                               },
                               child: ListTile(
                                leading: Icon(Icons.person,color: Colors.white,),
                                title: Text("Profile",style: TextStyle(color: Colors.white,),),
                                                           ),
                             ),
                             ListTile(
                              leading: Icon(Icons.bookmark_border_outlined,color: Colors.white,),
                              title: Text("Payemnt",style: TextStyle(color: Colors.white,),),
                            ),
                              SizedBox(
                                height: appSize.height * 0.01,
                              ),
                              Divider(color: Colors.white,height: 2,endIndent: 220,),
                              InkWell(
                                onTap: (){
                                  context.push("/rant");
                                },
                                child: ListTile(
                                  leading: Icon(Icons.safety_check,color: Colors.white,),
                                  title: Text("Rant",style: TextStyle(color: Colors.white,),),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  context.push("/electric");
                                },
                                child: ListTile(
                                  leading: Icon(Icons.safety_check,color: Colors.white,),
                                  title: Text("Electric Bill",style: TextStyle(color: Colors.white,),),
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  context.push("/gass");
                                },
                                child: ListTile(
                                  leading: Icon(Icons.safety_check,color: Colors.white,),
                                  title: Text("Gass Bill",style: TextStyle(color: Colors.white,),),
                                ),
                              ),
                              ListTile(
                                leading: Icon(Icons.notifications,color: Colors.white,),
                                title: Text("Notification",style: TextStyle(color: Colors.white,),),
                              ),
                              ListTile(
                                leading: Icon(Icons.messenger_outlined,color: Colors.white,),
                                title: Text("Message",style: TextStyle(color: Colors.white,),),
                              ),
                              Divider(color: Colors.white,height: 2,endIndent: 220,),
                              SizedBox(
                                height: appSize.height * 0.06,
                              ),
                              ListTile(
                                leading: Icon(Icons.logout,color: Colors.white,),
                                title: Text("Logout",style: TextStyle(color: Colors.white,),),
                              ),

                            ],
                          ),
                        ),
                      )),
                ),
                Transform(transform: Matrix4.identity()..translate(side)..scale(scale),
                  alignment: Alignment.centerLeft,
                  child: HomeScreen(),
                )

              ],
            ),
          );
        }
    );
  }
}
