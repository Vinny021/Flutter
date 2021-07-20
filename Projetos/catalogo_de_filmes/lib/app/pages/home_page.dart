import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo de Filmes')
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width)/2,
                    child: Column(
                      children: [],
                    ),
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width)/2,
                    child: Column(
                      children: [],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}