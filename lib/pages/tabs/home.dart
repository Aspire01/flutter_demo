import 'package:flutter/material.dart';
import '../datePicker.dart';
import '../search.dart';

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
            child: Text('跳转到搜索页面'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SearchPage(),
              ));
            },
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
          ),
          RaisedButton(
            child: Text('跳转到搜索页面并且携带参数'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SearchPage(title: '传值的搜索',),
              ));
            },
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
          ),
            RaisedButton(
            child: Text('跳转到日期组件演示页面'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DatePickerPage(),
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
