import 'package:first_app/components/button/button.dart';
import 'package:first_app/components/input/input.dart';
import 'package:first_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dypnos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

/// Próximos passos

/// Componentização do TextField e do botão
/// Separação de cores e estilos
/// criação do estado pro login e senha

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String user;

  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors['primaryColor'],
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                'Faça o login para começar',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Input(
                type: 'text',
                onChanged: (newValue) {
                  user = newValue;
                },
                label: 'Usuário'),
            Input(
                type: 'password',
                onChanged: (newValue) {
                  password = newValue;
                },
                label: 'Senha'),
            Button(
              onPressed: () {
                debugPrint('Username:' + user + ' Password:' + password);
              },
              label: 'Fazer login',
              disabled: user.isEmpty || password.isEmpty,
            ),
          ],
        ),
      )),
    );
  }
}
