import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);

  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  var now = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // print(now);
     print(formatDate(
     DateTime.now(), [yyyy,'/', mm, '/', dd]));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期选择'),
      ),
      body: Text('123'), 
    );
  }
}