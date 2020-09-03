import 'package:bytebank/http/webclient.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(ByteBank());
  findAll().then((transactions) => print('new transactions: $transactions'));
}

class ByteBank extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //save(Contact(0, 'Dudu', 2000));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}


