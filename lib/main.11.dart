import 'package:flutter/material.dart';

/**
 * listView列表组件 
 * 动态列表
 * 
 * 定义一个数组中的数据 如何循环遍历到列表中去
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
  // 自定义方法
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 10; i++) {
      list.add(
        ListTile(
          title: Text('这是第$i个标题'),
        ),
      );
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}
