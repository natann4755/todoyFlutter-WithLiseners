import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTascScreen extends StatelessWidget {

  AddTascScreen({this.addTaskCallback});

  Function addTaskCallback;
  String newTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTask = newValue;
              },
            ),
            FlatButton(
              child: Text('add',
              style: TextStyle(
                color: Colors.white
              ),),
              color: Colors.lightBlueAccent,
              onPressed: (){
                    addTaskCallback(newTask);
                    Navigator.pop(context);
              },
            )

          ],
        ),
      ),
    );
  }


}
