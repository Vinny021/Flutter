import 'package:flutter/material.dart';
import 'package:rotina/app/controller/tasks_controller.dart';
import 'package:rotina/app/controller/time_controller.dart';
import 'package:rotina/app/service/shared_service.dart';
import 'package:rotina/app/widgets/list_item_widget.dart';
import 'package:rotina/app/widgets/slider_widget.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage();

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  bool isStudyPrincipal = true;
  @override
  void initState() {
    Tasks.fillList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
              activeColor: Colors.greenAccent[400],
              value: isStudyPrincipal,
              onChanged: (val) {
                setState(() {
                  isStudyPrincipal = !isStudyPrincipal;
                  Tasks.swap();
                });
              }),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            double.parse(
                    (TimeController.timeDiference / TimeController.partitions)
                        .toStringAsFixed(2))
                .toString(),
            style: TextStyle(fontSize: 18, color: Colors.greenAccent[400]),
          ),
          SliderWidget(refresh),
          SizedBox(
            height: 30,
          ),
          for (var item in Tasks.finalList) itens(item),
          SizedBox(
            height: 30,
          ),
          MaterialButton(
            child: Text(
              'SAVE',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.greenAccent[400],
            onPressed: () {
              SharedService.save(
                  Tasks.finalList,
                  double.parse((TimeController.timeDiference /
                              TimeController.partitions)
                          .toStringAsFixed(2))
                      .toString());
            },
          ),
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
    );
  }

  refresh() {
    setState(() {});
  }
}
