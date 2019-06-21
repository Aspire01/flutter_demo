import 'package:flutter/material.dart';
import 'pages/routes/route.dart';

// 入口文件
void main() => runApp(AppDemo());

class AppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去除debug图标 右上角
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
