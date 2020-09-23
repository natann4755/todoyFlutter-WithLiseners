import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  TaskTile({this.title, this.isDone, this.checkBoxCallback});

  String title;
  bool isDone;
  Function checkBoxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
      style: TextStyle(
        decoration: isDone ? TextDecoration.lineThrough : null
      ),),
      trailing: Checkbox(
        value: isDone,
        onChanged: checkBoxCallback,
      ),
    );
  }
}