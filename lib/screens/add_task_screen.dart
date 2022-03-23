import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

 static List texts = [];
late String newTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Add task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize:35,

                fontWeight: FontWeight.bold
              ),),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.lightBlueAccent,
                onChanged: (value){
                  newTask = value;
                },
              ),
              SizedBox(height: 20,),
              FlatButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.lightBlueAccent,
                onPressed: (){
             addTaskCallback(newTask);
                }, child: Text(
                'Add Task'
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
