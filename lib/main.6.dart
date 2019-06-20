import 'package:flutter/material.dart';

/**
 * 图片组件image
 * 
 * 加载本地图片 
 *  
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
    return Center(
      child: Container(
        child: Image.asset('images/avatar.png',
        fit:BoxFit.cover,
        ), // 加载的本地图片
        width:100,
        height: 100,
        decoration:BoxDecoration(
          color: Colors.red,
        ),
      ),
    );
  }
}
