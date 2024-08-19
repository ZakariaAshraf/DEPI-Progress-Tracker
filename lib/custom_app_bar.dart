import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: WidgetStateColor.transparent,
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.arrow_back_outlined),
          SizedBox(
            width: 120,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            child: Center(child: Text("follow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),),),
            width: 60,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xff9E9E9EFF),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(150);
}
