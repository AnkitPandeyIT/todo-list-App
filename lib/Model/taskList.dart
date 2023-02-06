class Task {
  final String nameOfTask;
   bool isDone;

  Task({required this.nameOfTask,this.isDone=false});

  void changeCheckState(){
    isDone = !isDone;
  }
}