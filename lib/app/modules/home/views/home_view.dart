import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/todo_controller.dart';
import '../widgets/todo_item.dart';

class HomeView extends GetView<TodoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.todos.length,
          itemBuilder: (context, index) {
            final todo = controller.todos[index];
            return TodoItem(
              todo: todo,
              onToggle: () => controller.toggleTodo(index),
              onDelete: () => controller.deleteTodo(index),
              onEdit: () => _showEditDialog(context, index, todo.title),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(context),
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddDialog(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    Get.dialog(
      AlertDialog(
        title: Text('Add Todo'),
        content: TextField(
          controller: textController,
          decoration: InputDecoration(hintText: 'Enter todo title'),
        ),
        actions: [
          TextButton(
            child: Text('Cancel'),
            onPressed: () => Get.back(),
          ),
          TextButton(
            child: Text('Add'),
            onPressed: () {
              if (textController.text.isNotEmpty) {
                controller.addTodo(textController.text);
                Get.back();
              }
            },
          ),
        ],
      ),
    );
  }

  void _showEditDialog(BuildContext context, int index, String currentTitle) {
    final TextEditingController textController =
        TextEditingController(text: currentTitle);
    Get.dialog(
      AlertDialog(
        title: Text('Edit Todo'),
        content: TextField(
          controller: textController,
          decoration: InputDecoration(hintText: 'Enter new title'),
        ),
        actions: [
          TextButton(
            child: Text('Cancel'),
            onPressed: () => Get.back(),
          ),
          TextButton(
            child: Text('Update'),
            onPressed: () {
              if (textController.text.isNotEmpty) {
                controller.updateTodo(index, textController.text);
                Get.back();
              }
            },
          ),
        ],
      ),
    );
  }
}
