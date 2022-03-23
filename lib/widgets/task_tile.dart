import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
 final bool isChecked;
 final String TaskTitle;
 final Function checkBoxCallback ;

 TaskTile({required this.isChecked,required this.TaskTitle,required this.checkBoxCallback });


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        TaskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (newValue){
            checkBoxCallback(newValue);
          },
          // onChanged:
      ),


    );
  }
}

