import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Model/taskList.dart';

class ListData extends ChangeNotifier{

  List<Task>tasks = [
    Task(nameOfTask: "this is 1st task"),
  ];

  void addTask(String taskName){
    final task = Task(nameOfTask: taskName);
    tasks.add(task);
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}