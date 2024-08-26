import 'package:flutter/material.dart';
import 'package:flutter_task_3/activity_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task 3',
      home: ActivityView(),
    );
  }
}

