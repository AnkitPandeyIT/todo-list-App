import 'package:flutter/material.dart';
import 'tasksWidget.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Model/providerModel.dart';

class ListViewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return ListTileText(taskTitle: Provider.of<ListData>(context).tasks[index].nameOfTask,
          isChecked: Provider.of<ListData>(context).tasks[index].isDone,);
    }, itemCount: Provider.of<ListData>(context).tasks.length);

}
}