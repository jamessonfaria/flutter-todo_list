import 'package:flutter/material.dart';

class RowTextButton extends StatelessWidget {
  const RowTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Você possui 0 tarefas pendentes",
          ),
        ),
        SizedBox(width: 8),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff00d7f3),
            padding: EdgeInsets.all(14),
          ),
          child: Text("Limpar tudo"),
        ),
      ],
    );
  }
}