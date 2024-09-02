import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_task/main_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(),
        ),
      );
    });
    return Scaffold(
      body: Image.asset(
        "assets/images/splash.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

class CommonPage extends StatelessWidget {
  String title;
  String imagePath;
  String imageDescription;
  String bodyText;
  String buttonText;


   CommonPage({required this.title,required this.bodyText,required this.buttonText,required this.imageDescription,required this.imagePath,Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title:  Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffFA4A0C),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          Text(
            imageDescription,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
          const SizedBox(
            height: 10,
          ),
           Text(
            bodyText,
            style: const TextStyle(
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.all(40),
            width: 314,
            height: 70,
            decoration: BoxDecoration(
              color: const Color(0xffFA4A0C),
              borderRadius: BorderRadius.circular(30),
            ),
            child:  Center(
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}