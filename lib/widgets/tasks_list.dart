import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {

  TasksList(this.tasks);
  final List <Task> tasks;

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index){
        return TaskTile(
          title: widget.tasks[index].title,
          isDone: widget.tasks[index].isDone,
          checkBoxCallback: (checkBoxValue){
              setState(() {
                widget.tasks[index].done();
              });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}