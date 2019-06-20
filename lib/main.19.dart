import 'package:flutter/material.dart';
import 'res/data.dart';

/**
 * 有状态组件
 * 增加列表数据
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
          body: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Column(
          children:this.list.map((val){
              return ListTile(
                title: Text(val),
              );
            }).toList()
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('按钮'),
          onPressed: (){
            setState(() {
             this.list.add('增加一条数据'); 
            });
          },
        ),
      ],
    );
  }
}
