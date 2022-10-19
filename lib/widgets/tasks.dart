import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  late bool isChecked;
  late final String taskTitle;
  final Function CheckBoxCallBack;
  final Function LongPressCallBack;
  Tasks(
      {required this.isChecked,
      required this.LongPressCallBack,
      required this.taskTitle,
      required this.CheckBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        LongPressCallBack(taskTitle);
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
