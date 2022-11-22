import 'package:flutter/material.dart';
import 'package:todo_list/components/row_input_button.dart';
import 'package:todo_list/components/row_text_button.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RowInputButton.build(),
              SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    color: Colors.red,
                    height: 50,
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 50,
                  ),
                  Container(
                    color: Colors.green,
                    height: 50,
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                  ),
                ],
              ),
              SizedBox(height: 16),
              RowTextButton.build()
            ],
          ),
        ),
      ),
    );
  }
}
