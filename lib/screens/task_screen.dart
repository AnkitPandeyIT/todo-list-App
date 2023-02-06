import 'package:flutter/material.dart';
import 'package:todoey/Widget/listWidget.dart';
import 'package:todoey/Widget/bottom_popup.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Model/providerModel.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,bottom: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    child: Icon(Icons.list,
                    size: 35, color: Colors.lightBlueAccent,),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height: 10,),
                Text("Todoey",style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.w700
                    ,color: Colors.white
                ),),
                Text(Provider.of<ListData>(context).tasks.length.toString(),style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
              ),
              child: ListViewList(),
            ),
          ),
        ],
      ),
      floatingActionButton:  FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, isScrollControlled: true,
            builder:  (BuildContext buildContext){
          return SingleChildScrollView(child: Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: PopUpScreen()));
        });
      },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),),
    );
  }
}



