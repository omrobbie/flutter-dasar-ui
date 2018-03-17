import 'package:flutter/material.dart';

class SnackDialogScreen extends StatefulWidget {
  @override
  _SnackDialogScreenState createState() => new _SnackDialogScreenState();
}

class _SnackDialogScreenState extends State<SnackDialogScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var _appBar = AppBar(
      title: Text('Kodeversitas'),
      centerTitle: true,
    );

    var _body = Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            child: Text('Show Alert'),
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
          RaisedButton(
            child: Text('Show Option'),
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
          RaisedButton(
            child: Text('Show Snackbar'),
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
        ],
      ),
    );

    return Scaffold(
      key: _key,
      appBar: _appBar,
      body: _body,
    );
  }
}
