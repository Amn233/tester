import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp/Screens/Dashboard/dashboardScreen.dart';
import 'package:newsapp/Screens/Dashboard/DashboardComponent/mapSample.dart';
import 'package:newsapp/Screens/Splash/splashScreen.dart';
import 'Screens/Dashboard/DashboardComponent/leaveAppliction.dart';
import 'Screens/Dashboard/DashboardComponent/liveAattendance.dart';
import 'Screens/LoginScreen/loginScreen.dart';
import 'Screens/SigninScreen/signinScreen.dart';


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
      path: "/signIn",
      builder: (context, state) => SignInScreen(),
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




