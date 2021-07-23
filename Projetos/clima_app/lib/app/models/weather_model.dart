class WeatherModel {
  final String cityName;
  final double temp;
  final String description;
  final String icon;

  String get iconUrl {
    return 'https://openweathermap.org/img/wn/${this.icon}@2x.png';
  }

  WeatherModel({this.cityName, this.temp, this.description, this.icon});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    final temp = json['main']['temp'];
    final description = json['weather'][0]['description'];
    final icon = json['weather'][0]['icon'];

    var translatedDescription;

    switch (description) {
      case 'clear sky':
        translatedDescription = 'Tempo Limpo';
        break;
      case 'few clouds':
        translatedDescription = 'Poucas Nuvens';
        break;
      case 'scattered clouds':
        translatedDescription = 'Poucas Nuvens';
        break;
      case 'broken clouds':
        translatedDescription = 'Poucas Nuvens';
        break;
      case 'overcast clouds':
        translatedDescription = 'Nublado';
        break;
      case 'shower rain':
        translatedDescription = 'Chuva Leve';
        break;
      case 'rain':
        translatedDescription = 'Tempo Chuvoso';
        break;
      case 'moderate rain':
        translatedDescription = 'Tempo Chuvoso';
        break;
      case 'thunderstorm':
        translatedDescription = 'Tempestade';
        break;
      case 'snow':
        translatedDescription = 'Nevando';
        break;
      case 'mist':
        translatedDescription = 'Neblina';
        break;
      case 'haze':
        translatedDescription = 'Neblina';
        break;
      case 'fog':
        translatedDescription = 'Neblina';
        break;
      default:
        translatedDescription = 'Sem informações';
    }

    
    return WeatherModel(
      cityName: cityName, 
      temp: temp, 
      description: translatedDescription,  
      icon: icon
    );
  }
}