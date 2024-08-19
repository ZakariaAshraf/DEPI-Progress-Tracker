import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_2/home_page.dart';
import 'package:flutter_task_2/user.dart';

import 'contact_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key,}) : super(key: key);
  static String routeName="WelcomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Welcome to our application... "),
      ),
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          SizedBox(height: 23,),
          UserCard(user: User(userName:"@tamer101" , id: 1, name: 'Tamer Hosni',address: "Cairo ,Egypt",image:"assets/images/tamer_hosni.jpg",following: 200,followers: 1000)),
          SizedBox(height: 12,),
          UserCard(user: User(userName:"@amr102" , id: 2, name: 'Amr Bella',address: "Cairo ,Egypt",image:"assets/images/amr_bella.jpeg",following: 20,followers: 100)),

        ],
      ),
    );
  }
}


