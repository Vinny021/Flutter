import 'package:flutter/material.dart';
import 'package:rotina/app/controller/time_controller.dart';
import 'package:rotina/app/service/shared_service.dart';

import 'package:rotina/app/widgets/clock_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SharedService.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Defina o horário",
                    style: TextStyle(
                        color: Colors.greenAccent[400],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ClockWidget(),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            MaterialButton(
                child: Text(
                  "DONE",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.greenAccent[400],
                onPressed: () {
                  TimeController.updateTimeDiference();
                  Navigator.pushNamed(context, '/activity-page');
                }),
            MaterialButton(
                child: Text(
                  'ACTUAL LIST',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.greenAccent[400],
                onPressed: () {
                  Navigator.pushNamed(context, '/actual-list-page');
                })
          ],
        ),
      ),
    );
  }
}
