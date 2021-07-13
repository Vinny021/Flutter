import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.red[300],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.black.withOpacity(0.3),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('assets/images/logo.png')
                  ),
                  SizedBox(height:40),
                  Text(
                    'Location Changer', 
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height:15),
                  Text(
                    'Plugin app for Tinder',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    )
                  ),
                  SizedBox(height:25),
                  TextButton(
                    onPressed: (){}, 
                    child: Text(
                      'Login with Facebook', 
                      style: TextStyle(color: Colors.red[300], fontSize: 20),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Colors.white)
                        )
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white)
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}