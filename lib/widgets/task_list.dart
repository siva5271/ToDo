import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/widgets/tasks.dart';

import '../model/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListOfTasks>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final Task currentTask = taskData.tasks[index];
            return Tasks(
                isChecked: currentTask.isDone,
                taskTitle: currentTask.title,
                CheckBoxCallBack: (checkBoxState) {
                  taskData.UpdateTask(currentTask);
                },
                LongPressCallBack: (title) {
                  taskData.DeleteTask(title);
                });
          },
          itemCount: taskData.count,
        );
      },
    );
  }
}
