import 'package:flutter/material.dart';


class IdScreen extends StatelessWidget{
  static const String routeName = "/idScreen";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Id-Screen',
    theme: 
    ThemeData(
      primaryColor: Colors.grey, accentColor: Colors.blue
      ),
      home: IdScreenComponent(),
    );
  }
}

class IdScreenComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget> [
          const Text('Id screen')
        ]
      )
    );
  }
}