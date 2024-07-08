import 'package:hive/hive.dart';
import '../models/todo_model.dart';

class TodoProvider {
  final Box<TodoModel> _box = Hive.box<TodoModel>('todos');

  List<TodoModel> getAllTodos() {
    return _box.values.toList();
  }

  void addTodo(TodoModel todo) {
    _box.add(todo);
  }

  void updateTodo(int index, TodoModel todo) {
    _box.putAt(index, todo);
  }

  void deleteTodo(int index) {
    _box.deleteAt(index);
  }
}
