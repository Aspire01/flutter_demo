import 'package:flutter/material.dart';
import 'res/data.dart';

/**
 * card组件
 * 卡片的图文列表实现
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
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(  // 调节子元素的宽高比
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text('123'),
                subtitle: Text('123'),
                // leading: ClipOval(child:Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif', height: 60,width: 60,) ,),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(  // 专门处理图片为头像的 推荐使用
                      'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif'),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text('123'),
                subtitle: Text('123'),
                // leading: ClipOval(child:Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif', height: 60,width: 60,) ,),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(  // 专门处理图片为头像的 推荐使用
                      'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif'),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text('123'),
                subtitle: Text('123'),
                // leading: ClipOval(child:Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif', height: 60,width: 60,) ,),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(  // 专门处理图片为头像的 推荐使用
                      'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif'),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text('123'),
                subtitle: Text('123'),
                // leading: ClipOval(child:Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif', height: 60,width: 60,) ,),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(  // 专门处理图片为头像的 推荐使用
                      'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif'),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text('123'),
                subtitle: Text('123'),
                // leading: ClipOval(child:Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif', height: 60,width: 60,) ,),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(  // 专门处理图片为头像的 推荐使用
                      'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif'),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text('123'),
                subtitle: Text('123'),
                // leading: ClipOval(child:Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif', height: 60,width: 60,) ,),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(  // 专门处理图片为头像的 推荐使用
                      'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif'),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text('123'),
                subtitle: Text('123'),
                // leading: ClipOval(child:Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif', height: 60,width: 60,) ,),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(  // 专门处理图片为头像的 推荐使用
                      'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif'),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text('123'),
                subtitle: Text('123'),
                // leading: ClipOval(child:Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif', height: 60,width: 60,) ,),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(  // 专门处理图片为头像的 推荐使用
                      'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif'),
                ),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text('123'),
                subtitle: Text('123fsdjkfj时代峻峰数据库的看法几十块就快递费计算机结算单副书记',overflow:TextOverflow.ellipsis ,maxLines: 1,),
                // leading: ClipOval(child:Image.network('https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif', height: 60,width: 60,) ,),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(  // 专门处理图片为头像的 推荐使用
                      'https://n.sinaimg.cn/photo/579/w340h239/20190619/d277-hyrtarw0603713.gif'),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
