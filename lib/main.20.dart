import 'package:flutter/material.dart';
import 'res/data.dart';

/**
 * 底部导航
 * 
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


class Taps extends StatefulWidget {
  Taps({Key key}) : super(key: key);

  _TapsState createState() => _TapsState();
}

class _TapsState extends State<Taps> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
          appBar: AppBar(
            title: Text('flutter demo'),
          ),
          body: Text('底部导航切换实现'),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            onTap: (int index){
              print(index);
            },
            items: [ 
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('首页')
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.sort),
                title: Text('分类')
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text('购物车')
              ),
            ],
          ),
      ),
    );
  }
}
