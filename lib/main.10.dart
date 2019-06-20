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

  List<Widget> _getData(){
    return [
      ListTile(
        title: Text('一个标题'),
      ),
      ListTile(
        title: Text('一个标题'),
      ),
      ListTile(
        title: Text('一个标题'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: this._getData(),);
      }
    
}
