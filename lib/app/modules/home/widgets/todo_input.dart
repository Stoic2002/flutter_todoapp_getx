import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/todo_controller.dart';

class TodoInput extends GetView<TodoController> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Add a new todo',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: 16),
          ElevatedButton(
            onPressed: () {
              if (_textController.text.isNotEmpty) {
                controller.addTodo(_textController.text);
                _textController.clear();
              }
            },
            child: Icon(Icons.add),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(16),
            ),
          ),
        ],
      ),
    );
  }
}
