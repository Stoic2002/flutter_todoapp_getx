import 'package:flutter/material.dart';
import '../../../data/models/todo_model.dart';

class TodoItem extends StatelessWidget {
  final TodoModel todo;
  final VoidCallback onToggle;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  const TodoItem({
    Key? key,
    required this.todo,
    required this.onToggle,
    required this.onDelete,
    required this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(todo.key.toString()),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 16),
        child: Icon(Icons.delete, color: Colors.white),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => onDelete(),
      child: ListTile(
        leading: Checkbox(
          value: todo.isDone,
          onChanged: (_) => onToggle(),
        ),
        title: Text(
          todo.title,
          style: TextStyle(
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: onEdit,
        ),
      ),
    );
  }
}
