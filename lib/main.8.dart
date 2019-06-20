import 'package:flutter/material.dart';

/**
 * listView列表组件 垂直列表
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
    return ListView(
      padding:EdgeInsets.all(10) ,
      children: <Widget>[
        Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/aab7-hyrtarw0613320.gif'),
        Container(
          height:20,
          child: Text(
            '这是一个标题',
            textAlign:TextAlign.center ,
          ),
        ),
        Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/aab7-hyrtarw0613320.gif'),
        Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/aab7-hyrtarw0613320.gif'),
        Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/aab7-hyrtarw0613320.gif'),
      ],
    );
  }
}
