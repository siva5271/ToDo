import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'Task1',
          style: TextStyle(
              fontSize: 20,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ));
  }
}
