import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/widgets/tasks.dart';

import '../model/task.dart';

//This widget is equipped to return a list of tasks to it's parent widget
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListOfTasks>(
      //The entire widget is wrapped in a consumer widget so that it can make changes when the parameters in ListOfTasks is changed
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final Task currentTask = taskData.tasks[
                index]; //The tasks are taken one by one from the ListOfTasks
            return Tasks(
                task: currentTask,
                CheckBoxCallBack: (checkBoxState) {
                  //Upon clicking the checkbox the status of the tasks are updated
                  taskData.UpdateTask(currentTask);
                },
                DeleteTaskCallBack: (Task task) {
                  //This is used to delete the the items of choice by the user
                  taskData.DeleteTask(task);
                });
          },
          itemCount: taskData.count,
        );
      },
    );
  }
}
