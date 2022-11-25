import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("20/11/2015", style: TextStyle(
            fontSize: 12
          ),),
          Text("Tarefa 123", style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),),
        ],
      ),
    );
  }
}
