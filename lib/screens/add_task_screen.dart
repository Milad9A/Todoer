import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  final Function taskCallback;

  const AddTaskScreen({this.taskCallback});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  var taskName;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(
        0xff757575,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (newValue) {
                  taskName = newValue;
                },
              ),
              SizedBox(
                height: 24.0,
              ),
              FlatButton(
                onPressed: () {
                  widget.taskCallback(taskName);
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
