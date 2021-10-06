import 'package:flutter/material.dart';
import 'package:rotina/app/controller/time_controller.dart';

class SliderWidget extends StatefulWidget {
  final refreshAction;
  const SliderWidget(this.refreshAction);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  // static double currentSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Slider(
      activeColor: Colors.greenAccent[400],
      inactiveColor: Colors.green[800],
      value: TimeController.partitions,
      min: 1,
      max: 10,
      divisions: 9,
      label: TimeController.partitions.round().toString(),
      onChanged: (double value) {
        setState(() {
          widget.refreshAction();
          TimeController.partitions = value;
        });
      },
    );
  }
}
