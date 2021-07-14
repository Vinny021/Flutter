import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/currency.png'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(child: DropdownButton(items: [], onChanged: (value) {},)),
                  Expanded(child: TextField())
                ],
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Converter'))
              
          ]
        ),
      ),
    );
  }
}