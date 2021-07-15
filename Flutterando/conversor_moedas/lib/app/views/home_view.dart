import 'package:conversor_moedas/app/components/currency_component.dart';
import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final  TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  HomeController homeController;

  @override
  void initState() { 
    super.initState();
    homeController = HomeController(fromText: fromText, toText: toText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
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
                CurrencyComponent(
                  items: homeController.currencies, 
                  currencyValue: fromText,
                  selectedCurrency: homeController.fromCurrency,
                  dropDownSelected: (selectedCurrency){
                    setState(() {
                      homeController.fromCurrency = selectedCurrency;
                    });
                  }, 
                ),
                SizedBox(height: 20),
                CurrencyComponent(
                  items: homeController.currencies, 
                  currencyValue: toText,
                  selectedCurrency: homeController.toCurrency,
                  dropDownSelected: (selectedCurrency){
                    setState((){
                      homeController.toCurrency = selectedCurrency;
                    });
                  },
                ),
                SizedBox(height:60),
                ElevatedButton(
                  onPressed: () {
                    homeController.convert();
                  }, 
                  child: Text('Converter'),
                  style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Colors.yellow[700]), 
                  ),
                )
                  
              ]
            ),
          ),
        ),
      ),
    );
  }
}