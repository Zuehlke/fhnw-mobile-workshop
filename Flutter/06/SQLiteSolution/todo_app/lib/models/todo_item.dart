import 'package:todoapp/models/model.dart';

class TodoItem extends Model {
  static String table = 'todo_items';

  int id;
  String task;
  bool isComplete;

  TodoItem({this.id, this.task, this.isComplete});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {'task': task, 'isComplete': isComplete ? 1 : 0};

    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  static TodoItem fromMap(Map<String, dynamic> map) {
    return TodoItem(
        id: map['id'], task: map['task'], isComplete: map['isComplete'] == 1);
  }
}
