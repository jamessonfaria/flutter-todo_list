import 'package:flutter/material.dart';
import 'package:todo_list/widgets/todo_list_item.dart';

import '../models/todo.dart';

class RowListView extends StatefulWidget {
  const RowListView({Key? key, required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  State<RowListView> createState() => _RowListViewState(todos);
}

class _RowListViewState extends State<RowListView> {
  final List<Todo> todos;
  _RowListViewState(this.todos);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        shrinkWrap: true,
        children: [
          for (Todo todo in todos)
            TodoListItem(todo: todo, onDelete: onDelete),
        ],
      ),
    );
  }

  void onDelete(Todo todo) {
    setState(() {
      todos.remove(todo);
    });
  }
}