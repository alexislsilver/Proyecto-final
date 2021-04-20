import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pruebafirebase/pages/seconFormPage_page.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  FocusNode emaillogFocus;
  FocusNode passwordlogFocus;

  String emaillog;
  String passwordlog;

  void buscarFirebase() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      final firebaseInstance = FirebaseFirestore.instance;
      firebaseInstance
          .collection('Usuarios')
          .where('usuario', isEqualTo: emaillog)
          .where('password', isEqualTo: passwordlog)
          .snapshots()
          .listen(
        (result) {
          result.docs.forEach((doc) {
            print('estos son los datos:');
            print(doc.data());
          });
        },
      );
    }

    print('Estos son los datos del Usuario: ');

    if (emaillog.compareTo(emaillog) == 0 &&
        passwordlog.compareTo(passwordlog) == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondFormPage()),
      );
    } else {
      print('Datos incorrectos');
    }
    return;
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alexis Covarrubias Iniciar sesion'),
          backgroundColor: Colors.pink,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      height: 200.0,
                      child: Center(
                        child: Image.network(
                            'https://i.pinimg.com/originals/9c/b1/59/9cb159ed669f59d43cf2abc56c33f6a4.gif'),
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'email',
                          hintText: 'Ejemplo@example.com',
                          prefixIcon: Icon(Icons.mail)),
                      //controller: apTextController,
                      onSaved: (value) {
                        emaillog = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Campo vacio';
                        }
                      },
                      focusNode: this.passwordlogFocus,
                      onEditingComplete: () =>
                          requestFocus(context, emaillogFocus),
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Ejemplo: *',
                            prefixIcon: Icon(Icons.lock)),
                        //controller: apTextController,
                        onSaved: (value) {
                          passwordlog = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Campo vacio';
                          }
                        }),
                    SizedBox(height: 20.0),
                    SizedBox(height: 20.0),
                    RaisedButton(
                      color: Colors.green.shade600,
                      textColor: Colors.white,
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                          formKey.currentState.save();
                          if (emaillog.compareTo('alexis@gmail.com') == 0 &&
                              passwordlog.compareTo('12345') == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondFormPage()),
                            );
                          } else {
                            if (formKey.currentState.validate()) {
                              formKey.currentState.save();
                              if (emaillog.compareTo('jake@gmail.com') == 0 &&
                                  passwordlog.compareTo('1234') == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondFormPage()),
                                );
                              }
                            } else {
                              if (formKey.currentState.validate()) {
                                formKey.currentState.save();
                                if (emaillog.compareTo('koko@gmail.com') == 0 &&
                                    passwordlog.compareTo('123456') == 0) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SecondFormPage()),
                                  );
                                }
                              } else {
                                print('Datos incorrectos');
                              }
                            }
                          }
                        }
                      },
                      child: Text(' Iniciar '),
                    )
                  ],
                )),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus();
  }

  @override
  void initState() {
    super.initState();
    //nombreTextController = TextEditingController();
    //apTextController = TextEditingController();

    emaillogFocus = FocusNode();
    passwordlogFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    //nombreTextController.dispose();
    //apTextController.dispose();
    emaillogFocus.dispose();
    passwordlogFocus.dispose();
  }
}

class Argumentos {
  String emaillog;
  String passwordlog;

  Argumentos({this.emaillog, this.passwordlog});
}
