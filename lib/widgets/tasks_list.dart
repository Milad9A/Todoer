import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoer/models/task_data.dart';
import 'package:todoer/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData taskData, Widget child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool checkboxState) {
                taskData.updateTask(task);
              },
            );
          },
        );
      },
    );
  }
}
