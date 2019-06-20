import 'package:flutter/material.dart';
import 'pages/tabs.dart';

/**
 * 底部导航
 * 实现tabbar的切换
 */

void main() => runApp(AppDemo());

class AppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Taps()
    );
  }
}

