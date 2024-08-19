import 'package:flutter/material.dart';
import 'package:flutter_task_2/home_page.dart';
import 'package:flutter_task_2/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    User user1 =User(id: 1, name: "Tamer", address: "Cairo, Egypt",image:"assets/images/tamer_hosni.jpg",followers: 1000,following: 250, userName: "@tamer101" );
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task 2',
      home:HomePage(user: user1,),
    );
  }
}

