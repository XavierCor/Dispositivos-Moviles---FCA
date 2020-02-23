import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() => MyButtonState();
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ['Javier', 'Omar', 'Cortés', "Ramírez"];
  String displayedString = "Dispositivos Moviles!";

  void onPressOfButton() {
      setState(() {
      displayedString = strings[counter];
      //Imprimiendo el valor actual del arreglo y el valor del contador.
      print ("Palabra: " + strings[counter] + ", contador: " + counter.toString());
      counter = counter < 3 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayedString, style: TextStyle(fontSize: 30.0)),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child:
                     Text("Esto es un paddiing", textAlign: TextAlign.center),
              ),
              RaisedButton(
                child: Text(
                  "Presioname!",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.indigo,
                elevation: 20.0,
                onPressed: onPressOfButton,
              )
            ],
          ),
        ),
      ),
    );
  }
}
