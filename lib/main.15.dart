import 'package:flutter/material.dart';
import 'res/data.dart';

/**
 * stack组件结合Align以及positioned
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
        height: 180,
        width: 180,
        color: Colors.brown,
        child: Stack(
          // alignment:Alignment.center,
          children: <Widget>[
            Align(
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
              alignment: Alignment.topLeft,
            ),
            Align(
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
    );
  }
}
