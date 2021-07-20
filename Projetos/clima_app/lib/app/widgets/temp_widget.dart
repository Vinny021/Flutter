import 'package:flutter/material.dart';

class CityTemp extends StatefulWidget {

  @override
  _CityTempState createState() => _CityTempState();
}

class _CityTempState extends State<CityTemp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '--°C',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight:FontWeight.w500
              )
            ),
            SizedBox(width: 40,),
            //Local onde aparecera a imagem
          ],
        ),
    );
  }
}