import 'package:flutter/material.dart';

class CityName extends StatefulWidget {
  final String cidade;

  const CityName({Key key, this.cidade}) : super(key: key);

  @override
  _CityNameState createState() => _CityNameState();
}

class _CityNameState extends State<CityName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Text(
            'Cidade'.toUpperCase(),
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w300
            ),
          ),
        ),
      
    );
  }
}