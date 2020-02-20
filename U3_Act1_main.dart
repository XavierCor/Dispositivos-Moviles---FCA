import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                child: Container(color: Colors.blue, height: 100, width: 70),
              ),
              Flexible(
                child: Container(color: Colors.red, height: 300, width: 70,),
              ),
              Flexible(
                child: Container(color: Colors.amber, height: 50,width: 50,
                    transform: Matrix4.rotationZ(0.50)),
              )
            ],
          ),
        ));
  }
}
