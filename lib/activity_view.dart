import 'package:flutter/material.dart';
import 'package:flutter_task_3/user_card.dart';

class ActivityView extends StatelessWidget {
  ActivityView({Key? key}) : super(key: key);
  List<User> usersList = [
    User(
      userName: "zakaria",
    ),
    User(
      userName: "ali",
    ),
    User(
        userName: "sherif",
        notifyImage:
            "https://picsum.photos/4000/4000?random=${DateTime.now().millisecondsSinceEpoch}",
        notificationText: "Liked by your friend"),
    User(
        userName: "ayman",
        notifyImage:
            "https://picsum.photos/4000/4000?random=${DateTime.now().millisecondsSinceEpoch}",
        notificationText: "Liked by your friend"),
    User(
      userName: "hassan",
      notificationText: "Liked by your friend",
    ),
    User(
        userName: "abdo",
        notifyImage:
            "https://picsum.photos/4000/4000?random=${DateTime.now().millisecondsSinceEpoch}",
        notificationText: "Liked by your friend"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Activity (${usersList.length.toString()})",
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 30,))
        ],
      ),
      body: ListView.separated(
        itemCount: usersList.length,
        itemBuilder: (BuildContext context, int index) =>
            UserCard(user: usersList[index]),
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 5,
        ),
      ),
    );
  }
}
