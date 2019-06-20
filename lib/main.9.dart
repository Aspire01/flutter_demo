import 'package:flutter/material.dart';

/**
 * listView列表组件 水平列表
 * 实现图文列表
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
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal, //控制方向
        children: <Widget>[
          Container(
            width: 180,
            height: 100,
            color: Colors.red,
          ),
             Container(
            width: 180,
            height: 100,
            color: Colors.yellow,
          ),
             Container(
            width: 180,
            height: 100,
            color: Colors.green,
            child: ListView(children: <Widget>[
              Image.network('https://p.ivideo.sina.com.cn/video/294/284/481/294284481.jpg'),
              Text('我是一个文本')
            ],),
          ),
        ],
      ),
    );
  }
}
