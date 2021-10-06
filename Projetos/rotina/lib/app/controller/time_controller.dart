class TimeController {
  static int hour = 12;
  static int min = 0;
  static int minTotais = 720;
  static int timeDiference = 0;
  static double partitions = 10;

  static void transformaMin({int horas, int minutos}) {
    minTotais = 0;
    minTotais = horas * 60 + minutos;
  }

  static void updateHora(int horas, int minutos) {
    hour = horas;
    min = minutos;

    transformaMin(horas: horas, minutos: minutos);
  }

  static updateTimeDiference() {
    DateTime now = DateTime.now();
    int nowHour = now.hour;
    int nowMinute = now.minute;
    int nowMinTotal = nowHour * 60 + nowMinute;

    timeDiference = minTotais - nowMinTotal;
  }
}
