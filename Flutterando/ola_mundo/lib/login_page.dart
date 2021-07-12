import 'package:flutter/material.dart';

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
                    if(email == 'viniciusbarbosa021@gmail.com' && password == 'teste123'){
                      print('Login feito com sucesso');
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