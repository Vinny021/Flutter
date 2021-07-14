import 'package:conversor_moedas/app/components/currency_component.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top:150, left:25, right:25, bottom: 20),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/currency.png'),
                ),
              ),
              SizedBox(height: 40),
              CurrencyComponent(),
              SizedBox(height: 20),
              CurrencyComponent(),
              SizedBox(height:60),
              ElevatedButton(
                onPressed: () {}, 
                child: Text('Converter'),
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.yellow[700]), 
                ),
              )
                
            ]
          ),
        ),
      ),
    );
  }
}