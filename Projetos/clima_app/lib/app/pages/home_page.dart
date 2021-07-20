import 'package:clima_app/app/widgets/city_name.dart';
import 'package:clima_app/app/widgets/search_widget.dart';
import 'package:clima_app/app/widgets/temp_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.lightBlueAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CityName(),
                CityTemp(),
                SearchBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}