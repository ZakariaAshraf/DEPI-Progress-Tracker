import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_2/user.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String ?title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: WidgetStateColor.transparent,
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.start,
        children: [
           IconButton( onPressed: () {  Navigator.pop(context);},icon:Icon(Icons.arrow_back_outlined) ,),
          const SizedBox(
            width: 120,
          ),
          Expanded(
            child: Text(
              title!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            child: const Center(child: Text("follow",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),),),
            width: 60,
            height: 30,
            decoration: BoxDecoration(
              color: const Color(0xff9E9E9EFF),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(150);
}
