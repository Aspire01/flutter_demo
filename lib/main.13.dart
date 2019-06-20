import 'package:flutter/material.dart';
import 'res/data.dart';

/**
 *gridview组件
 一般适用于商品的布局 网格布局
 两种方式
  1.GridView.count  
    crossAxisCount: 2, //这个参数是必须要传的
  2.GridView.builder
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


List<Widget> _getDataList(){
    List<Widget> list = new List();
    for(var i=0;i<20;i++){
      list.add(
        Container(child: Text('这是第$i条数据'),alignment:Alignment.center ,color: Colors.green,)
      );
    }
    
    return list;
}

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 20,  // 垂直子widget之间的间距
      crossAxisSpacing: 20, //水平子widget之间的距离
      childAspectRatio: 1, //宽度与高度的比例
      children: this._getDataList(),
    );
  }
}
