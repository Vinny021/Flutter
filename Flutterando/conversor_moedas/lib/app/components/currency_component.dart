import 'package:flutter/material.dart';

class CurrencyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
      Row(
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 64,
                child: DropdownButton(
                  iconEnabledColor: Colors.amber,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  isExpanded: true,
                  items: [
                    DropdownMenuItem(child: Text('Real')),
                    DropdownMenuItem(child: Text('Dolar')),
                  ],
                  onChanged: (value) {},
                ),
              )
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)
                    )
                ),
              )
          )
        ],
      );
  }
}
