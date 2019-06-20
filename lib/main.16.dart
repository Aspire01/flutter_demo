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
            Positioned(
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
              left: 0,
            ),
            Positioned(
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
              top: 100,
              left: 50,
            ),
            Positioned(
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              bottom: 0,
              right: 100,
            ),
          ],
        ),
      ),
    );
  }
}
