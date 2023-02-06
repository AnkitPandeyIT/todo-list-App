import 'package:flutter/material.dart';
import 'package:todoey/Model/taskList.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Model/providerModel.dart';

class PopUpScreen extends StatelessWidget {

    late String taskText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add Task",style: TextStyle(
              color: Colors.lightBlueAccent,fontSize: 30
            ), textAlign: TextAlign.center,),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (givenTask){
                taskText = givenTask;
              },
            ),

            TextButton(onPressed: () {
              print("button is clicked");
              print(taskText);
             Provider.of<ListData>(context, listen: false).addTask(taskText);
              Navigator.pop(context);
            },
              child:Text("Add",style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent
              ),
            ),

          ],
        ),
      ),
    );
  }
}
