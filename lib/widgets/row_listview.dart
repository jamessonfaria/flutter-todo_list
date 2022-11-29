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
  Todo? deletedTodo;
  int? deletedTodoPos;

  _RowListViewState(this.todos);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        shrinkWrap: true,
        children: [
          for (Todo todo in todos) TodoListItem(todo: todo, onDelete: onDelete),
        ],
      ),
    );
  }

  void onDelete(Todo todo) {
    deletedTodo = todo;
    deletedTodoPos = todos.indexOf(todo);

    setState(() {
      todos.remove(todo);
    });

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: Text(
            "Tarefa ${todo.title} foi removida com sucesso!",
            style: TextStyle(color: Color(0xff060708)),
        ),
        backgroundColor: Colors.white,
        action: SnackBarAction(
          label: 'Desfazer',
          textColor: const Color(0xff00d7f3),
          onPressed: () {
            setState(() {
              todos.insert(deletedTodoPos!, deletedTodo!);
            });
          },
        ),
      ),
    );
  }
}
