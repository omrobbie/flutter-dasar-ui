import 'package:flutter/material.dart';

class HelloScreen extends StatefulWidget {
  @override
  _HelloScreenState createState() => new _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  @override
  Widget build(BuildContext context) {
    var body = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.blue[200],
          ],
        ),
      ),
      margin: EdgeInsets.only(top: 52.0),
      padding: EdgeInsets.all(16.0),
      child: Text('Hello Flutter'),
    );

    var baris = Row(
      children: <Widget>[body, body],
    );

    return Scaffold(
      body: baris,
    );
  }
}
