import 'package:flutter/material.dart';
import 'res/data.dart';

/**
 * listView列表组件 
 * 动态列表
 * 
 * 使用listview.builder来循环遍历数据
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

  Widget _getList(context,index){
      return ListTile(
          title: Text(listData[index]['title']),
        );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getList  // 赋值 不是调用
    );
  }
}
