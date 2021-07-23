import 'dart:convert';

import 'package:clima_app/app/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherRepository {
  Future<WeatherModel> fetchData(String city) async {

    final parameters = {
      'q': city, 
      'appid': '08a844db191800d9687830005d04270a', 
      'units': 'imperial'
    };

    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', parameters);

    final result = await http.get(uri);

    print(result.body);

    final json = jsonDecode(result.body);
    
    return WeatherModel.fromJson(json);
  }
}