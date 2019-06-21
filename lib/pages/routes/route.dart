import 'package:flutter/material.dart';
import 'package:flutter_demo_01/pages/search.dart';
import 'package:flutter_demo_01/pages/user/Login.dart';
import 'package:flutter_demo_01/pages/user/RegisterFirst.dart';
import 'package:flutter_demo_01/pages/user/RegisterSecond.dart';
import '../tabs.dart';

// 配置路由
final routes = {
  '/': (context,)=>Taps(),
  '/search': (context, {arguments}) => SearchPage(
        arguments: arguments,
      ),
  '/login': (context,) => LoginPage(),
  '/registerf': (context,) => RegisterFirstPage(),
  '/registers': (context) => RegisterSecondPage(),
};

//固定写法 来自视频
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
