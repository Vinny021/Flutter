import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top:100, left:25, right:25, bottom: 20),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/currency.png'),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height:64,
                        child: DropdownButton(
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
                    SizedBox(width: 15,),
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
                ),
              ),
              SizedBox(height:40),
              ElevatedButton(
                onPressed: () {}, 
                child: Text('Converter'),
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.amber), 
                ),
              )
                
            ]
          ),
        ),
      ),
    );
  }
}