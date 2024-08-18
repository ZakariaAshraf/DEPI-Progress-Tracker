import 'package:flutter/material.dart';
import 'package:flutter_task_1/user.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({super.key});
  User user=User(name: "Zakaria",score: 79,status: Status.Active);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${user.name} Profile Page ....",style: const TextStyle(fontSize: 25,color: Colors.brown),),
        backgroundColor: user.status.color,

      ),
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          color: user.status.color,
          child: Center(child: Text("Score : ${user.score}",style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),)),
        ),
      ),
    );
  }
}

