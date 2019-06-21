import 'package:flutter/material.dart';
import 'package:flutter_demo_01/pages/button.dart';
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
            onPressed: () {  // 使用统一的命名路由进行跳转
              Navigator.pushNamed(context, '/search');
            },
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            child: Text('跳转到搜索页面并且携带参数'),
            onPressed: () {
                Navigator.pushNamed(context, '/search',arguments: {
                  'id':123
                });
            },
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
          ),
            RaisedButton(
            child: Text('跳转到按钮演示页面'),
            onPressed: () {
              Navigator.of(context).push(
               MaterialPageRoute(
                 builder: (context) =>ButtonPage(),
               )
              );
            },
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
          ),
        ],
      ),
    ));
  }
}
