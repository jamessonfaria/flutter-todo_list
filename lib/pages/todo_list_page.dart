import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Adicione uma tarefa",
                      hintText: "Exemplo estudar flutter"),
                ),
              ),
              SizedBox(width: 8,),
              ElevatedButton(
                onPressed: () {},
                child: Text("+"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
