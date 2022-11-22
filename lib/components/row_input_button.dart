import 'package:flutter/material.dart';

class RowInputButton {
  static Flex build() {
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