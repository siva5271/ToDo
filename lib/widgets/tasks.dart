import 'package:flutter/material.dart';

import '../model/task.dart';

//This widget contains the format in which the tiles are to be laid out
class Tasks extends StatelessWidget {
  final Task task;
  final Function
      CheckBoxCallBack; //Callback to the parent widget when the checkbox corresponding to each item is pressed
  final Function DeleteTaskCallBack; //Callback to initiate deletion of items
  Tasks(
      {required this.task,
      required this.DeleteTaskCallBack,
      required this.CheckBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        highlightColor: Colors.red,
        icon: Icon(
          Icons.delete,
        ),
        onPressed: () {
          DeleteTaskCallBack(task);
        },
      ),
      title: Text(
        task.title,
        style: TextStyle(
            fontSize: 20,
            decoration: task.isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: task.isDone,
          onChanged: (value) => CheckBoxCallBack(value)),
    );
  }
}
