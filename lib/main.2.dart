import 'package:flutter/material.dart';


/**
 * Container组件 + Text组件
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
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(10.0),
            width: 200.0,
            height: 200.0,
            child: Text(
              'flutter demo 我是测试文本 我是测试文本 我是测试文本',
               style:TextStyle(
                 fontSize: 20,
                 color: Colors.white, //字体颜色
                 fontWeight:FontWeight.w700,  // 加粗
                 decoration: TextDecoration.lineThrough,  // 穿过线
                 decorationColor: Colors.red, //穿过线的颜色
               ),
               textAlign: TextAlign.center,
               overflow:TextOverflow.ellipsis ,  // 溢出出现...
               maxLines: 2, // 最多显示几行
               textScaleFactor: 1,  // 字体放大倍率
            ),
            decoration:BoxDecoration(
              color: Colors.blueGrey,
              border: Border.all(
                color: Colors.red,
                width: 2.0
              ),
              borderRadius:BorderRadius.all(  // 圆角
                Radius.circular(10)
              )
            ),
            transform:Matrix4.skewX(50.0) , // 倾斜
            alignment:Alignment.bottomLeft ,
          ),
        ),
      ),
    );
  }
}
