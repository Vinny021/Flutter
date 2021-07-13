import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá Mundo!'),
        actions: [
          CustomSwitch(),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(height:20),
            UserAccountsDrawerHeader(
              accountName: Text('Vinícius Barbosa'), 
              accountEmail: Text('viniciusbarbosa021@gmail.com'),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network('https://media-exp1.licdn.com/dms/image/C4E03AQG7gKJElNUR6A/profile-displayphoto-shrink_200_200/0/1612901300024?e=1631750400&v=beta&t=7bEpXsQzWdt0QIjbgYb2BL5LoXrHPWzEysx1bK4ss8s')),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Desconectar'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              }
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contador: $counter',
              style: TextStyle(fontSize: 20),
            ),
            Container(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: counter%3 == 1 ? Colors.cyan : Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: counter%3 == 2 ? Colors.cyan : Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: counter%3 == 0 ? Colors.cyan : Colors.black,
                ),
              ],
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){ 
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value){
        AppController.instance.changeTheme();
      }
    );
  }
}