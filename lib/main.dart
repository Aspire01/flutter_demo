import 'package:flutter/material.dart';
import 'pages/tabs.dart';


// 入口文件
void main() => runApp(AppDemo());

class AppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Taps()
    );
  }
}

