import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Model/providerModel.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

 // ontext.watch<int?>();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
   create: (context) => ListData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

