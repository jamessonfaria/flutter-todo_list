import 'package:flutter/material.dart';
import 'package:todo_list/widgets/todo_list_item.dart';

class RowListView extends StatelessWidget {
  const RowListView({Key? key, required this.todos}) : super(key: key);

  final List<String> todos;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        shrinkWrap: true,
        children: [
          for (String todo in todos)
            TodoListItem(title: todo),
        ],
      ),
    );
  }
}