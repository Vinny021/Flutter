import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';

class HomeController{
  List <CurrencyModel> currencies;
  
  final TextEditingController fromText;
  final TextEditingController toText; 

  CurrencyModel fromCurrency;
  CurrencyModel toCurrency;

  HomeController({this.fromText, this.toText}){
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert(){
    String input = fromText.text;
    double value = double.tryParse(input.replaceAll(',', '.'));
    double result = 0;

    if(toCurrency.name == 'Real'){
      result = value * fromCurrency.real;
    }else if(toCurrency.name == 'Dolar'){
      result = value * fromCurrency.dolar;
    }else if(toCurrency.name == 'Euro'){
      result = value * fromCurrency.euro;
    }else if(toCurrency.name == 'Bitcoin'){
      result = value * fromCurrency.bitcoin;
    }

    toText.text = result.toStringAsFixed(2);
  }

}