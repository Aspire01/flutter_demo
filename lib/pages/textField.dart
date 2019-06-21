import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

  var _username = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._username.text = '设置的初始值';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面'),
      ),
      body:Padding(
        padding: EdgeInsets.all(10),
        child:  Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: '请输入用户名'
            ),
            controller: _username,
            onChanged: (value){
              _username.text = value;
            },
          ),
          SizedBox(height: 20,),
          Divider(height: 1,),
          Container(
            width: double.infinity,
            child: RaisedButton(  // 点击按钮获取表单值
              child: Text('点击获取值'),
              onPressed: (){
                print(this._username.text);
              },
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
      )
    );
  }
}

class TextEdit extends StatefulWidget {
  TextEdit({Key key}) : super(key: key);

  _TextEditState createState() => _TextEditState();
}

class _TextEditState extends State<TextEdit> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: '输入查询内容',
                border: OutlineInputBorder(
                  
                ),
              ),
            ),
             SizedBox(height: 10,),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: '多行文本框',
                border: OutlineInputBorder(
                  
                ),
              ),
            ),
               SizedBox(height: 10,),
            TextField(
              maxLines: 3,
              obscureText: true,
              decoration: InputDecoration(
                hintText: '密码框',
                border: OutlineInputBorder(
                  
                ),
              ),
            ),
               SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.verified_user),
                border: OutlineInputBorder(
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}