import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();

  final homeController = HomeController(fromText: fromText, toText: toText);

  test('Conversão de real para dolar', (){
    fromText.text = '2.0';
    homeController.convert();
    expect(toText.text, '0.38');
    print(toText.text);
  });

  test('Conversão de real para dolar com virgula', (){
    fromText.text = '2,0';
    homeController.convert();
    expect(toText.text, '0.38');
    print(toText.text);
  });
}