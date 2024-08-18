
import 'package:flutter/material.dart';

class User {
  String name;
  int score;
  Status status;
  User({required this.name, required this.score, required this.status});
}
enum Status {
  Active(Colors.green),Pending(Colors.orange),Blocked(Colors.red);
  final Color color;
  const Status(this.color);

}