import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(user.userName);
      },
      child: Container(
        width: double.infinity,
        height: 108,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              width: 100,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.blueGrey,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    user.userName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    user.notificationText ?? "",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 100,
            ),
            specifyNotification(user),
          ],
        ),
      ),
    );
  }
}

class User {
  String userName;
  String? notifyImage;
  String? notificationText;

  User({
    required this.userName,
    this.notifyImage,
    this.notificationText,
  });
}

Widget specifyNotification(User user) {
  return user.notifyImage != null
      ? Container(
          width: 90,
          height: 70,
          child: Image(image: NetworkImage(user.notifyImage ?? ""),fit: BoxFit.cover,),
        )
      : ElevatedButton(
          child: Text(
            'follow',
            style: TextStyle(fontSize: 15),
          ),
          onPressed: () {
            print("following " + user.userName);
          },
        );
}
