import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/models/task_data.dart';
import 'package:task_management/screens/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, Widget child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
              title: task.name,
              isChecked: task.isChecked,
              checkBoxCallback: (bool checkBoxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}
