import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';

class HomeController{
  List <CurrencyModel> currencies;
  
  TextEditingController fromText = TextEditingController();
  TextEditingController toText = TextEditingController();

  CurrencyModel fromCurrency;
  CurrencyModel toCurrency;

  HomeController(){
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert(){
    String input = fromText.text;
    double value = double.tryParse(input);
    double result = 0;

    if(toCurrency.name == 'Real'){
      result = value * toCurrency.real;
    }else if(toCurrency.name == 'Dolar'){
      result = value * toCurrency.dolar;
    }else if(toCurrency.name == 'Euro'){
      result = value * toCurrency.euro;
    }else if(toCurrency.name == 'Bitcoin'){
      result = value * toCurrency.bitcoin;
    }

    toText.text = result.toStringAsFixed(2);
  }

}