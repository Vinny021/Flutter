import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(height:40),
                TextField(
                  onChanged: (text){
                    email = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder()
                  )
                ),
                SizedBox(height:10),
                TextField(
                  onChanged: (text){
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder()
                  )
                ),
                SizedBox(height:10),
                ElevatedButton(
                  onPressed: (){
                    if(email == 'viniciusbarbosa021@gmail.com' && password == '123'){
                      Navigator.of(context).pushReplacementNamed('/home');
                    }else{
                      print('Usuário inválido');
                    }
                  }, 
                  child:Text('Entrar')
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}