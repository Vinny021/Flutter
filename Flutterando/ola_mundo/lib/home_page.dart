import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá Mundo!$counter'),
      ),
      body: Center(
        child: Switch(
          value: AppController.instance.isDarkTheme, 
          onChanged: (value){
            AppController.instance.changeTheme();
          } 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){ 
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}