import 'package:flutter/material.dart';
import 'package:rotina/app/controller/time_controller.dart';

// ignore: must_be_immutable
class ClockWidget extends StatefulWidget {

  const ClockWidget({ Key key }) : super(key: key);

  @override
  _ClockWidgetState createState() => _ClockWidgetState();

}

class _ClockWidgetState extends State<ClockWidget> {
  TimeController timeController = getTimeControll();

  double height;
  double _width;

  String _hour, _minute, _time;

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  TextEditingController _timeController = TextEditingController();

  @override
  void initState() {
    _timeController.text = '12 : 00';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _selectTime(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    width: _width / 1.9,
                    height: height / 11,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.greenAccent[400]),
                    child: TextFormField(
                      style: TextStyle(fontSize: 40),
                      textAlign: TextAlign.center,
                      enabled: false,
                      keyboardType: TextInputType.text,
                      controller: _timeController,
                      decoration: InputDecoration(
                          disabledBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.all(5)),
                    ),
                  ),
                ),
              ],
            );
  }
  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null){
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        if(_minute.toString().length == 1){
          _time = _hour + ' : 0' + _minute;
        }else{
          _time = _hour + ' : ' + _minute;
        }

        timeController.updateHora(int.parse(_hour), int.parse(_minute));

        _timeController.text = _time;
      });
    }
  }

}
