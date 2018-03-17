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

    var display1 = Theme.of(context).textTheme.display1;

    var _body = Column(
      children: <Widget>[
        Text(
          'Flutter Indonesia',
          style: display1,
        ),
        SizedBox(height: 16.0,),
        Text(
            'Deserunt veniam cupidatat qui eiusmod dolor minim culpa elit irure reprehenderit. Qui ipsum nostrud laborum dolor in cupidatat elit id id. Reprehenderit mollit elit do labore commodo ullamco adipisicing quis qui quis velit esse et. Ipsum ex velit velit magna excepteur. Fugiat velit eiusmod magna veniam velit. Cillum esse sint aliqua Lorem laboris do. Dolore aliqua fugiat cillum magna ipsum laboris anim exercitation mollit do id fugiat reprehenderit exercitation.'),
      ],
    );

    var _fab = FloatingActionButton(
      child: Icon(Icons.add),
      tooltip: 'Add Floating',
      onPressed: () {},
    );

    return new Scaffold(
      appBar: _appBar,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: _body,
      ),
      floatingActionButton: _fab,
    );
  }
}
