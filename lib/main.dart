import 'package:flutter/material.dart';
import 'package:dasar_ui/snack_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SnackDialogScreen(),
    );
  }
}