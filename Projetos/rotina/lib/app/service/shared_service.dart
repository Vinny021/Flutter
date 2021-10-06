import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  static SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static save(List<String> list, String time) {
    prefs.setString('time', time);
    for (int i = 0; i < list.length; i++) {
      prefs.setString(i.toString(), list[i]);
    }
  }

  static load(key) {
    return prefs.get(key.toString());
  }
}
