import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            Flexible(
                //flex: 17,
                child :Container(color: Colors.cyan, height: 100, width: 100),
              ),
              Flexible(
                //flex: 2,
                child: Container(color: Colors.red, height: 200),
              ),
              Flexible(
                //flex: 3,
                child: Container(
                    color: Colors.amber, height: 100,width:100
,                    transform: Matrix4.rotationZ(0.50)),
              )
            ],
          ),
        ));
  }
}
