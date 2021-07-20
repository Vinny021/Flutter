import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.search), 
              onPressed: () {}
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: "Digite a cidade desejada"),
              ),
            )
          ],
        )
    );
  }
}