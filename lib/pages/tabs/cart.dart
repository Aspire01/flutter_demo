import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           RaisedButton(
             child: Text('跳转到登录页面'),
             onPressed: (){
              Navigator.pushNamed(context, '/login');
             },
             color: Theme.of(context).accentColor,
             textColor: Colors.white,
           ),
           SizedBox(height: 20,),
             RaisedButton(
             child: Text('跳转到注册页面'),
             onPressed: (){
               Navigator.pushNamed(context, '/registers');
             },
             color: Theme.of(context).accentColor,
             textColor: Colors.white,
           ),
         ],
       ),
    );
  }
}