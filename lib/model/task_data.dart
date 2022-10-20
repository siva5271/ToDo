import 'package:flutter/foundation.dart';
import 'package:todoey/model/task.dart';

//The list of tasks and the associated functions are stored here
class ListOfTasks extends ChangeNotifier {
  List<Task> tasks = [];
  int get count => tasks.length;
  void AddTask(newTaskTitle) {
    tasks.add(Task(title: newTaskTitle));
    notifyListeners();
  }

  void UpdateTask(Task selectedTask) {
    selectedTask.ToggleDone();
    notifyListeners();
  }

  void DeleteTask(taskTitle) {
    tasks.removeWhere((element) => element.title == taskTitle);
    notifyListeners();
    print(tasks);
  }
}
