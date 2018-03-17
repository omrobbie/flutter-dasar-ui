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
      padding: EdgeInsets.all(16.0),
      child: Text('Hello Flutter'),
      width: 200.0,
      height: 200.0,
    );

    var baris = Row(
      children: <Widget>[body, body],
    );

    var kolom = Column(
      children: <Widget>[body, body],
    );

    var label = Text('Hello Flutter');

    var tombol = RaisedButton(
      child: Text('Tombol'),
      onPressed: () {},
    );

    var tumpuk = Stack(
      children: <Widget>[body, tombol],
    );

    return Scaffold(
      body: Center(
        child: tumpuk,
      ),
    );
  }
}
