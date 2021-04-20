import 'package:flutter/material.dart';
import 'package:pruebafirebase/pages/login.dart';
import 'package:pruebafirebase/pages/seconFormPage_page.dart';

import 'opeFirebase.dart';

class Logeo extends StatefulWidget {
  const Logeo({Key key}) : super(key: key);

  @override
  _logeoState createState() => _logeoState();
}

class _logeoState extends State<Logeo> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Equipo Dinamita'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Form(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                Container(
                  width: 300.0,
                  height: 300.0,
                  child: Center(
                    child: Image.network(
                        'https://i.pinimg.com/originals/c1/35/d8/c135d8bdc8d1a6b0625b31114ee205a0.gif'),
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                SizedBox(
                  height: 6.0,
                ),
                SizedBox(
                  height: 6.0,
                ),
                RaisedButton(
                  color: Colors.green.shade600,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text('Iniciar sesion'),
                ),
                SizedBox(
                  height: 6.0,
                ),
                SizedBox(
                  height: 6.0,
                ),
                SizedBox(
                  height: 6.0,
                ),
                RaisedButton(
                  color: Colors.blue.shade800,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OpeFirebase()),
                    );
                  },
                  child: Text('REgristarse'),
                ),
              ])),
        ),
      ),
    );
  }
}
