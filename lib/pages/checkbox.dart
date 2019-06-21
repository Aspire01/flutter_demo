import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('checkbox演示页面'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (val) {
                  setState(() {
                    this.flag = val;
                  });
                },
                activeColor: Colors.pink,
              )
            ],
          ),
          Divider(
            height: 2,
          ),
          Row(
            children: <Widget>[Text(this.flag ? '选中' : '未选中')],
          ),
          CheckboxListTile(
            value: this.flag,
            title: Text('标题'),
            subtitle: Text('副标题'),
            onChanged: (val) {
              setState(() {
                this.flag = val;
              });
            },
          )
        ],
      ),
    );
  }
}
