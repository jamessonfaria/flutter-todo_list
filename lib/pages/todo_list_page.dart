import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "exemplo@exemplo.com",
              //border: OutlineInputBorder(),
              //border: InputBorder.none,
              //errorText: "Campo obrigatório",
              prefixText: 'R\$ ',
              suffixText: 'cm',
              labelStyle: TextStyle(
                fontSize: 40,
              ),
            ),
            //obscureText: true,
            //obscuringCharacter: "X",
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}