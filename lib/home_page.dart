import 'package:flutter/material.dart';
import 'package:flutter_task_2/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(title: "@amrbella"),
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
            child: const CircleAvatar(
              foregroundImage: AssetImage(
                "assets/images/amr_bella.jpeg",
              ),
              backgroundColor: Colors.white,
            ),
          ),
          const Column(
            children: [
              Text("Amr Bella",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              Text("Cairo, Egypt",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 130),
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "220  ",
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
                "150  ",
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
