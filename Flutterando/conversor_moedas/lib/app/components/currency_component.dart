import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyComponent extends StatelessWidget {

  final List <CurrencyModel> items;
  final CurrencyModel selectedCurrency;
  final TextEditingController currencyValue;
  final Function(CurrencyModel model) dropDownSelected;

  const CurrencyComponent({Key key, this.items, this.currencyValue, this.dropDownSelected, this.selectedCurrency}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 55,
                child: DropdownButton <CurrencyModel>(
                  iconEnabledColor: Colors.amber,
                  value: selectedCurrency,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  isExpanded: true,
                  items: items.map(
                    (e)=>DropdownMenuItem(
                      value: e,
                      child: Text(e.name))
                  ).toList(),
                  onChanged: dropDownSelected,
                ),
              )
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              flex: 2,
              child: TextField(
                controller: currencyValue,
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
