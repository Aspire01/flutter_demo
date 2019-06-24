import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('APPBarDemoPage'),
          backgroundColor: Colors.blue,
          // leading: IconButton(  // 按钮图标建议写法
          //   icon: Icon(Icons.menu),
          //   onPressed: (){
          //     print(1);
          //   },
          // ),
          // actions: <Widget>[
          //   IconButton(
          //     // 按钮图标建议写法
          //     icon: Icon(Icons.search),
          //     onPressed: () {
          //       print(1);
          //     },
          //   ),
          // ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: '热门',
              ),
              Tab(
                text: '推荐',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第二个tab'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/**
 *以下是在导航上自定义按钮图标
 * appBar: AppBar(
        title: Text('APPBarDemoPage'),
        backgroundColor: Colors.blue,
        // leading: IconButton(  // 按钮图标建议写法
        //   icon: Icon(Icons.menu),
        //   onPressed: (){
        //     print(1);
        //   },
        // ),
        actions: <Widget>[
           IconButton(  // 按钮图标建议写法
          icon: Icon(Icons.search),
          onPressed: (){
            print(1);
          },
        ),
        ],
      ),
 */
