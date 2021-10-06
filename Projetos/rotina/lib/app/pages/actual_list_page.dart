import 'package:flutter/material.dart';
import 'package:rotina/app/service/shared_service.dart';
import 'package:rotina/app/widgets/list_item_widget.dart';

class ActualListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            SharedService.load('time'),
            style: TextStyle(fontSize: 18, color: Colors.greenAccent[400]),
          ),
          SizedBox(
            height: 30,
          ),
          for (var i = 0; i < 10; i++) itens(SharedService.load(i))
        ],
      ),
    );
  }
}
