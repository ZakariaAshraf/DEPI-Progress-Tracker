import 'package:flutter/material.dart';
import 'package:flutter_task_2/user.dart';

import 'home_page.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black,width: 5,),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.yellowAccent,
              shape: BoxShape.circle,
            ),
            child:  CircleAvatar(
              foregroundImage: AssetImage(
                user.image!,
              ),
              backgroundColor: Colors.white,
            ),
          ),
          Expanded(child: Text(user.name,style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),)),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, HomePage.routeName,arguments: Arguments(user: user));
            },
            child: Container(
              child:  Center(child: Text("View Profile")),
              width: 100,
              height: 50,
              decoration: BoxDecoration(color: Colors.blue,borderRadius:BorderRadius.circular(12)) ,
            ),
          ),
        ],
      ),
    );
  }
}