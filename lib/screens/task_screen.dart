import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

import '../widgets/task_list.dart';
import 'add_task_screen.dart';

//This is the home screen of the app
class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //The floating action button equipped to draw up a bottom sheet to add more tasks
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context)
                      .viewInsets
                      .bottom), //This is used to make the popped up bottom sheet to be adjustable even when the keyboard is popped up
              child:
                  AddTaskScreen(), //The flow of code is diverted to the section concerning the addition of new tasks
            )),
          );
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: CircleAvatar(
              child: Icon(
                Icons.list,
                color: Colors.lightBlueAccent,
                size: 45,
              ),
              backgroundColor: Colors.white,
              radius: 30,
            ),
            padding: EdgeInsets.only(top: 60, bottom: 15, left: 30, right: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Todoey',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '${Provider.of<ListOfTasks>(context).count} tasks', //The number of tasks to be displayed is taken as the ListOFTasks's length
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child:
                  TaskList(), //The flow of control is transferred to TaskList
            ),
          ),
        ],
      ),
    );
  }
}
