import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks.dart';

import '../model/task.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(title: 'Buy eggs'),
    Task(title: 'Buy lemons'),
    Task(title: 'Buy food')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Tasks(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].title,
          CheckBoxCallBack: (checkBoxState) {
            setState(() {
              tasks[index].ToggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
