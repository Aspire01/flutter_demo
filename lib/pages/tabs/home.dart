import 'package:flutter/material.dart';
import 'package:flutter_demo_01/pages/app_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('跳转到tabbar页面'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AppBarDemo(),
              ));
            },
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    ));
  }
}
