import 'package:flutter/material.dart';

/**
 * 图片组件image
 * 圆形图片或圆角图片的制作
 *  1.container的border-radius & decoration
 *  2.flutter提供的ClipOval
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
      width: 300,
      height: 300,
      decoration: BoxDecoration(  // 实现圆角的方式1
        color: Colors.yellow,
        // borderRadius:BorderRadius.all(
        //  Radius.circular(150)
        // ),
        borderRadius: BorderRadius.circular(150),
        image:DecorationImage(
          image: NetworkImage('https://pics3.baidu.com/feed/f703738da97739121bf8f55be353861d377ae2f9.jpeg?token=93ec5b3b63f9fe88a03be1ea01514e39&s=064541A27FF7BFC85645AC9D0300D080'),
          fit: BoxFit.cover
        )
      ),
    ));
  }
}
