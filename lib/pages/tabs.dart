import 'package:flutter/material.dart';
import 'tabs/home.dart';
import 'tabs/sort.dart';
import 'tabs/cart.dart';

class Taps extends StatefulWidget {
  Taps({Key key}) : super(key: key);

  _TapsState createState() => _TapsState();
}

class _TapsState extends State<Taps> {

  int _currentIndex = 0;

  List _pageList = [
    HomePage(),
    SortPage(),
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
          appBar: AppBar(
            title: Text('flutter demo'),
          ),
          body: this._pageList[this._currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex:this._currentIndex,
            onTap: (int index){
              setState(() {
               this._currentIndex = index; 
              });
            },
            iconSize: 20, // 配置图标的大小
            fixedColor: Colors.blue, // 配置选中的颜色
            type:BottomNavigationBarType.fixed , // 配置底部tab按钮可以大于三个
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
