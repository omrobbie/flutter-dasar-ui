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
            onPressed: () => tampilDialog(context),
          ),
          SizedBox(height: 8.0),
          RaisedButton(
            child: Text('Show Option'),
            onPressed: () => tampilOption(context),
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

  // fungsi untuk menampilkan alert dialog
  tampilDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      child: AlertDialog(
        title: Text('Hello'),
        content: Text('Ini adalah AlertDialog. Silahkan tekan tombol Ok'),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  // fungsi untuk menampilkan option dialog
  tampilOption(BuildContext context) {
    showDialog(
      context: context,
      child: SimpleDialog(
        title: Text('Pilih salah satu'),
        children: <Widget>[
          SimpleDialogOption(
            child: Text('Flutter'),
            onPressed: () {
              debugPrint('Anda memilih Flutter!');
              Navigator.of(context).pop();
            },
          ),
          SimpleDialogOption(
            child: Text('React Native'),
            onPressed: () {
              debugPrint('Anda memilih React Native!');
              Navigator.of(context).pop();
            },
          ),
          SimpleDialogOption(
            child: Text('Fusetools'),
            onPressed: () {
              debugPrint('Anda memilih Fusetools!');
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
