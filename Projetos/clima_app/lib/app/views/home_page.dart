import 'package:clima_app/app/models/weather_model.dart';
import 'package:clima_app/app/repositories/weather_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final state = ValueNotifier<String>('start');
  final cityName = TextEditingController(); 
  final repository = WeatherRepository();

  WeatherModel weatherData;

  void _search() async {
    state.value = 'fetching';
    try {
      final result = await repository.fetchData(cityName.text);
      setState(
        () => weatherData = result
      );
      state.value = 'success';  
    } catch (e) {
      state.value = 'error';
    }
  }

  _start(){
    return homePageContent();
  }
  _fetching(){
    return Container(
      color: Colors.lightBlue.shade100,
      child: Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo.shade400))));
  }
  _success(){
    return homePageContent();
  }
  _error(){
    return Container(
      color: Colors.lightBlue.shade100,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Cidade Inválida', style: TextStyle(fontSize:30, fontWeight: FontWeight.w600)),
                  SizedBox(height:10),
                  Text('Digite Outra', style: TextStyle(fontSize:15)),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 60, bottom:10),
                child: SizedBox(
                  height: 50,
                  width: 130,
                  child:TextField(
                      cursorColor: Colors.indigo.shade400,
                      controller: cityName,
                      decoration: InputDecoration(
                        labelText: 'Cidade',
                        labelStyle: TextStyle(color: Colors.indigo.shade400),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo.shade400, width: 1)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo.shade400, width: 1)
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo.shade400, width: 1)
                        )
                      ),
                      textAlign: TextAlign.center
                  ),
                ),
              ),
               ElevatedButton(
                onPressed: _search, 
                child: Text('Buscar'), 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo.shade400)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  stateManager(String state){
    switch (state) {
      case 'start':
        return _start();
      case 'fetching':
        return _fetching();
      case 'success':
        return _success();
      case 'error':
        return _error();
      default:
        return _start();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: state, 
        builder: (context, child){ 
          return stateManager(state.value);
        }
      )
    );
  }

  Widget homePageContent(){
    return Container(
      color: Colors.lightBlue.shade100,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (weatherData != null)
                Column(
                  children: [
                    Text(weatherData.cityName, style: TextStyle(fontSize:30, fontWeight: FontWeight.w600)),
                    SizedBox(height:5),
                    Image.network(weatherData.iconUrl),
                    Text(
                      '${((weatherData.temp - 32) * 5 / 9).toStringAsPrecision(2)}°C',
                      style: TextStyle(fontSize: 40, fontWeight:FontWeight.w400),
                    ),
                    SizedBox(height:5),
                    Text(weatherData.description, style: TextStyle(fontSize:15)),
                  ],
                ),
              Padding(
                padding: EdgeInsets.only(top: 60, bottom:10),
                child: SizedBox(
                  height: 50,
                  width: 130,
                  child: TextField(
                      cursorColor: Colors.indigo.shade400,
                      controller: cityName,
                      decoration: InputDecoration(
                        labelText: 'Cidade',
                        labelStyle: TextStyle(color: Colors.indigo.shade400),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo.shade400, width: 1)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo.shade400, width: 1)
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo.shade400, width: 1)
                        )
                      ),
                      textAlign: TextAlign.center
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _search, 
                child: Text('Buscar'), 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo.shade400)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}