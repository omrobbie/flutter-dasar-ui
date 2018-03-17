import 'package:flutter/material.dart';

class MaterialScreen extends StatefulWidget {
  @override
  _MaterialScreenState createState() => new _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {
  @override
  Widget build(BuildContext context) {
    var _appBar = AppBar(
      leading: Icon(Icons.menu),
      title: Text('Material Design'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );

    return new Scaffold(
      appBar: _appBar,
      body: null,
    );
  }
}
