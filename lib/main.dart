
import 'package:flutter/material.dart';
import 'package:flutter_task/screens.dart';

import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task 4',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splash.route,
      routes:{
        AppRoute.splash.route:(context)=>const SplashScreen(),
        AppRoute.main.route:(context)=>MainPage(),
      },

    );
  }
}

enum AppRoute {
  splash("/splash"),
 
  main("/main");

  final String route;

  const AppRoute(this.route);
}

