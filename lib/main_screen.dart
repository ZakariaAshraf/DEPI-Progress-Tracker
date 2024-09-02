import 'package:flutter/material.dart';
import 'package:flutter_task/screens.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    CommonPage(
        title: "Home",
        bodyText: "Hit the orange button down \nbelow to Create an order",
        buttonText: "Try again",
        imageDescription: "No Internet connection",
        imagePath: "assets/images/muffin.png"),
    CommonPage(
        title: "Cart",
        bodyText: "Hit the orange button down \nbelow to Create an order",
        buttonText: "Start ordering",
        imageDescription: "No orders yet",
        imagePath: "assets/images/avocado.png"),
    CommonPage(
        title: "Favourites",
        bodyText: "Hit the orange button down \nbelow to Create an order",
        buttonText: "Explore",
        imageDescription: "No favourite yet",
        imagePath: "assets/images/salat.png"),
    CommonPage(
        title: "History",
        bodyText: "Hit the orange button down \nbelow to Create an order",
        buttonText: "Start ordering",
        imageDescription: "No history yet",
        imagePath: "assets/images/cofee.png"),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined),
            label: "Recently",
          ),
        ],
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white38,
        onTap: (newIndex) => updateSelectedPage(newIndex),
      ),
    );
  }

  void updateSelectedPage(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}
