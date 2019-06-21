import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){

            },
          )
        ],
      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add,color: Colors.black38,size: 40,),
        onPressed: (){
          print(123);
        },
        backgroundColor:Colors.yellow,
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}