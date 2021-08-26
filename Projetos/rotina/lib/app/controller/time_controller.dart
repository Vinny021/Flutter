class TimeController {
  int _hora = 12;
  int _min = 0;
  int _minTotais = 720;

  int getHora(){
    return _hora;
  }

  int getMinutos(){
    return _min;
  }

  int getMinutosTotais(){
    return _minTotais;
  }

  void transformaMin({int horas, int minutos}){
    _minTotais = 0;
    _minTotais = horas * 60 + minutos;
  }
  
  void updateHora(int horas, int minutos){
    _hora = horas;
    _min = minutos;
    
    transformaMin(horas: horas, minutos: minutos);
  }

}

TimeController timeControll = TimeController();

getTimeControll(){
  return timeControll;
}
