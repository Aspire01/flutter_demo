import 'package:flutter/material.dart';
import 'res/data.dart';

/**
 * 自定义按钮组件
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ButtonState(
            Icons.settings,
            color: Colors.yellow,
          ),
          ButtonState(
            Icons.settings,
            color: Colors.blueAccent,
          ),
          ButtonState(
            Icons.settings,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class ButtonState extends StatelessWidget {
  Color color = Colors.red;
  IconData icon;
  double size = 32;

  // 构造函数
  ButtonState(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          color: Colors.cyan,
          size: this.size,
        ),
      ),
    );
  }
}
