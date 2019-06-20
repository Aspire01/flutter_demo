import 'package:flutter/material.dart';

/**
 * listView列表组件 垂直列表
 * 实现图文列表
 * ListTile 防止新闻标题  二级标题等比较适合
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
      children: <Widget>[
        ListTile(
          leading: Image.network('http://n.sinaimg.cn/news/1_img/upload/c4b46437/775/w900h675/20190618/d515-hyrtarv6105342.jpg'),
          title: Text('123'),
          subtitle: Text('456'),
        ),
        ListTile(
          leading: Icon(Icons.settings,color: Colors.green,),
          title: Text('123'),
          subtitle: Text('456'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('123'),
          subtitle: Text('456'),
        ),
      ],
    );
  }
}
