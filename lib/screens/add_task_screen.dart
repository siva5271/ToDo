import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTask; //The task entered by the user
  @override
  Widget build(BuildContext context) {
    return Container(
      //Two containers are laid over  one another to make the radius of curvature visible
      color: Color(
          0xff757575), //This is the inner component and is given the same colour as that of the background
      child: Container(
        //This is the component  which will be visible to the user
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 3)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 5.0)),
                    labelText: 'Enter the task'),
                onChanged: (value) {
                  //The newTask is being changed as the user types in
                  newTask = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                //The add button to add the entered new task
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                ),
                onPressed: () {
                  Provider.of<ListOfTasks>(context,
                          listen:
                              false) //Listening is set to false because the no change is to be made here hence the entire widget is not wrapped in a consumer widget
                      .AddTask(
                          newTask); //This one calls the AddTask function in ListOfTasks and passes in the task entered by the user
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Color(0xff75757)
