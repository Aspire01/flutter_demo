import 'package:flutter/material.dart';

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

    print(now);

    setState(() {
      this.now = now;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('datePicker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text('${this.now}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: () {
                  print('1');
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
