import 'package:flutter/material.dart';

Widget itens(itemText) {
  return Center(
    child: Column(
      children: [
        Text(
          itemText,
          style: TextStyle(fontSize: 18, color: Colors.greenAccent[400]),
        ),
        SizedBox(
          height: 8,
        )
      ],
    ),
  );
}
