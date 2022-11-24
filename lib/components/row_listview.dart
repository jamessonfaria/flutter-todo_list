import 'package:flutter/material.dart';

class RowListView extends StatelessWidget {
  const RowListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text("Tarefa 1"),
          subtitle: Text("20/11/2022"),
          leading: Icon(Icons.add),
          onTap: () {
            print("clicouuuu");
          },
        ),
        ListTile(
          title: Text("Tarefa 2"),
          subtitle: Text("20/11/2022"),
          leading: Icon(Icons.person),
        ),
      ],
    );
  }
}
