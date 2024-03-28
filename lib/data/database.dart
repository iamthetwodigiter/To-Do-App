import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  final _box = Hive.box('ToDoBox');

  void createInitialData() {
    toDoList = [

    ];
  }
  void loadData() {
    toDoList = _box.get("TODOLIST");
  }

  void updateDataBase() {
    _box.put("TODOLIST", toDoList);
  }
}