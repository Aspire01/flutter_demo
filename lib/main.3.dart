import 'package:flutter/material.dart';

/**
 * 图片组件image
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
        child: Image.network('https://pics3.baidu.com/feed/f703738da97739121bf8f55be353861d377ae2f9.jpeg?token=93ec5b3b63f9fe88a03be1ea01514e39&s=064541A27FF7BFC85645AC9D0300D080',
          alignment:Alignment.topLeft ,
          // fit:BoxFit.cover , // 这个属性重要 cover:图片可能拉伸 可能裁剪 充满  contain:原图显示
          repeat:ImageRepeat.repeatY ,
        ), // 添加远程图片
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
    ));
  }
}
