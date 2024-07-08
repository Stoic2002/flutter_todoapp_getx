import 'package:get/get.dart';
import '../data/models/todo_model.dart';
import '../data/providers/todo_provider.dart';

class TodoController extends GetxController {
  final TodoProvider todoProvider = TodoProvider();
  final todos = <TodoModel>[].obs;

  @override
  void onInit() {
    todos.assignAll(todoProvider.getAllTodos());
    super.onInit();
  }

  void addTodo(String title) {
    final todo = TodoModel(title: title);
    todoProvider.addTodo(todo);
    todos.add(todo);
  }

  void updateTodo(int index, String title) {
    final todo = todos[index];
    todo.title = title;
    todoProvider.updateTodo(index, todo);
    todos[index] = todo;
  }

  void toggleTodo(int index) {
    final todo = todos[index];
    todo.isDone = !todo.isDone;
    todoProvider.updateTodo(index, todo);
    todos[index] = todo;
  }

  void deleteTodo(int index) {
    todoProvider.deleteTodo(index);
    todos.removeAt(index);
  }
}
