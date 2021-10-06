import 'package:flutter/material.dart';
import 'package:rotina/app/pages/activity_page.dart';
import 'package:rotina/app/pages/actual_list_page.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/activity-page': (context) => ActivityPage(),
        '/actual-list-page': (context) => ActualListPage()
      },
    );
  }
}
