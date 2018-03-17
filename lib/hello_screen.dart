import 'package:flutter/material.dart';

class HelloScreen extends StatefulWidget {
  @override
  _HelloScreenState createState() => new _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  @override
  Widget build(BuildContext context) {
    var body = Container(
      color: Colors.red,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      child: Text('Hello Flutter'),
    );

    return Scaffold(
      body: body,
    );
  }
}