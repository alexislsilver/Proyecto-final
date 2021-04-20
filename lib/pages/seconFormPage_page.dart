import 'package:flutter/material.dart';

class SecondFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Argumentos parametros = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('Pagina Login')),
        body: Column(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              child: Center(
                child: Image.network(
                    'https://i.pinimg.com/originals/5e/e4/5f/5ee45fc544747e499ac826037585bd6c.gif'),
              ),
            ),
            Text(
              'integrantes: Jaqueline Alvarez ,Alexis Covarrubias ,Eiko Garcia ,Juan Miranda',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
