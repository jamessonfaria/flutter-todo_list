import 'package:flutter/material.dart';

class RowInputButton extends StatelessWidget {
  const RowInputButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Adicione uma tarefa",
                hintText: "Ex: estudar flutter"),
          ),
        ),
        SizedBox(width: 8),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff00d7f3),
            padding: EdgeInsets.all(14),
          ),
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ],
    );
  }
}