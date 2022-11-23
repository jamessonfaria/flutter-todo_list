import 'package:flutter/material.dart';

class RowListView extends StatelessWidget {
  const RowListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
