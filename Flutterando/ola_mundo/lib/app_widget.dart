import 'package:flutter/material.dart';
import 'package:ola_mundo/login_page.dart';
import 'app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance, 
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.cyan,
            brightness: AppController.instance.isDarkTheme ? 
              Brightness.dark : 
              Brightness.light
          ),
          home: LoginPage(),
        );
      }
    );
  }
}