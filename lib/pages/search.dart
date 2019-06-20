import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  String title;
  SearchPage({this.title = '默认搜索'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( //自定义按钮进行返回
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Text('搜索页面区域'),
    );
  }
}