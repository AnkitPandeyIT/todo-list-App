import 'package:flutter/material.dart';

class ListTileText extends StatefulWidget {

  bool isChecked;
  final String taskTitle;
  ListTileText({required this.taskTitle, required this.isChecked});

  @override
  State<ListTileText> createState() => _ListTileTextState();
}

class _ListTileTextState extends State<ListTileText> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(widget.taskTitle, style: TextStyle(
          decoration: widget.isChecked ? TextDecoration.lineThrough : null
        ),),
        trailing:Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: widget.isChecked,
          onChanged: (newValue){
            setState(() {
              widget.isChecked = newValue!;
            });
          },
        ),
    );
  }
}


