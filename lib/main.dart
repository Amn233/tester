import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp/CustomWidgets/Animations/Animation_Drawer/animated_drawer.dart';
import 'package:newsapp/Screens/Dashboard/Dashboard_service/live_attendance_screen.dart';
import 'package:newsapp/Screens/Dashboard/dashboard_screen.dart';
import 'package:newsapp/Screens/Home_Screen/home_screen.dart';
import 'package:newsapp/Screens/Home_Screen/login_screen.dart';
import 'package:newsapp/Screens/MapSample/map_sample.dart';
import 'package:newsapp/Screens/ProfileScreens/profile_screen.dart';
import 'package:newsapp/Screens/Onboarding/Splash/splash_screen.dart';


import 'CustomWidgets/Animations/Animation_Drawer/electric_bill_screen.dart';
import 'CustomWidgets/Animations/Animation_Drawer/gass_bill_screen.dart';
import 'CustomWidgets/Animations/Animation_Drawer/rant_bill_screen.dart';
import 'Screens/Dashboard/Dashboard_service/leave_appliction.dart';
import 'Screens/Detail_screen/detail_product.dart';

void main() {
  runApp(const MyApp());
}
final GoRouter _router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: "/splash",
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: "/dashboard",
      builder: (context, state) =>dashBoard_screen(),
    ),
    GoRoute(
      path: "/live",
      builder: (context, state) =>live_attendance(),
    ),
    GoRoute(
      path: "/leave",
      builder: (context, state) =>LeaveApplication(),
    ),
    GoRoute(
      path: "/map",
      builder: (context, state) =>MapSample(),
    ),
    GoRoute(
      path: "/electric",
      builder: (context, state) =>ElectricScreen(),
    ),
  ],
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
        routerConfig: _router
    );
  }
}




