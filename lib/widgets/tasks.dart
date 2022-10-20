import 'package:flutter/material.dart';

//This widget contains the format in which the tiles are to be laid out
class Tasks extends StatelessWidget {
  late bool isChecked;
  late final String taskTitle;
  final Function
      CheckBoxCallBack; //Callback to the parent widget when the checkbox corresponding to each item is pressed
  final Function LongPressCallBack; //Callback to initiate deletion of items
  Tasks(
      {required this.isChecked,
      required this.LongPressCallBack,
      required this.taskTitle,
      required this.CheckBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        LongPressCallBack(taskTitle); //Initiation of the deletion process
      },
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 20,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (value) => CheckBoxCallBack(value)),
    );
  }
}
