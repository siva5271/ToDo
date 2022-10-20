import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

import 'screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //ChangeNotifier encompasses the entire program to reset the values without any hiccup
      create: (context) =>
          ListOfTasks(), //The entire list of tasks to be displayed
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
