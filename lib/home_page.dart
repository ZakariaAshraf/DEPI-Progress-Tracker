import 'package:flutter/material.dart';
import 'package:flutter_task_2/custom_app_bar.dart';
import 'package:flutter_task_2/user.dart';
import 'package:flutter_task_2/welcome_screen.dart';

class HomePage extends StatelessWidget {
  static String routeName="HomePage";
  HomePage({super.key,});


  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Arguments;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  MyAppBar(title: args.user.userName),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            width: 250,
            height: 125,
            decoration: const BoxDecoration(
              color: Colors.brown,
              shape: BoxShape.circle,
            ),
            child:  CircleAvatar(
              foregroundImage: AssetImage(
                args.user.image!,
              ),
              backgroundColor: Colors.white,
            ),
          ),
           Column(
            children: [
              Text(args.user.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              Text(args.user.address,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 130),
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                args.user.followers.toString(),
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                "Followers",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                args.user.following.toString(),
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(
                "Following",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.open_in_browser_outlined,
                color: Colors.grey,
              ),
              Container(
                height: 10,
                width: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,
                ),
              ),
              const Icon(
                Icons.open_in_browser_outlined,
                color: Colors.grey,
              ),
              Container(
                height: 10,
                width: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,
                ),
              ),
              const Icon(
                Icons.open_in_browser_outlined,
                color: Colors.grey,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                      color: Colors.grey,
                      child: const Center(
                          child: Text(
                        "220  Shoots",
                        style: TextStyle(color: Colors.purple, fontSize: 20),
                      )))),
              const SizedBox(
                width: 22,
              ),
              const Expanded(child: Text("10  Collections")),
            ],
          ),
          Expanded(child: Image.asset("assets/images/mann.jpeg")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: const Center(
                  child: Text(
                    "Donate ",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Message ",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
class Arguments{
  final User user;
  Arguments({required this.user});
}