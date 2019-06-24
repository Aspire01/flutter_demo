import 'package:flutter/material.dart';

class SortPage extends StatefulWidget {
  SortPage({Key key}) : super(key: key);

  _SortPageState createState() => _SortPageState();
}

class _SortPageState extends State<SortPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor:Colors.white,
                  tabs: <Widget>[
                    Tab(
                      text: '热门',
                    ),
                    Tab(
                      text: '推荐',
                    ),
                    Tab(
                      text: '直销',
                    ),
                    Tab(
                      text: '完美',
                    ),
                  ],
                ),
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
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第三个tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第四个tab'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
