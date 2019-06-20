import 'package:flutter/material.dart';
import 'res/data.dart';

/**
 * 有状态组件
 * 自增的计数器
 */

void main() => runApp(AppDemo());

class AppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('flutter demo'),
          ),
          body: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Chip(
            label: Text('${count}'),
          ),
          RaisedButton(
            child: Text('按钮'),
            onPressed: (){
              setState(() {
                count++;
              });
            },
          )
        ],
      ),
    );
  }
}
