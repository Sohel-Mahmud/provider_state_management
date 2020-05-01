import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/models/task_data.dart';
import 'package:task_management/screens/task_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
