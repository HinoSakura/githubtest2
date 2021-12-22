import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//test123

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = 'Hello World';
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            // state ? 'hello world' : 'good night',
            title,
            textDirection: TextDirection.ltr, // TextDirection文字方向
            style: TextStyle(
                fontSize: 50.0,
                color: Colors.green,
                fontStyle: FontStyle.italic),
          ),
          Directionality(
            //Directionality - 文字方向，text 的單屬性性拓展 Widget
            textDirection: TextDirection.ltr,
            child: FlatButton(
              //FlatButton扁平按鈕
              color: Colors.red,
              child: Icon(Icons.power_settings_new), //設計Button圖示
              onPressed: () {
                //onPressed按壓button
                setState(() {
                  // if (state) {
                  //   state = false;
                  // } else {
                  //   state = true;
                  // }
                  state = !state; //!表示相反的意思

                  if (state) {
                    title = 'Good Morning';
                  } else {
                    title = 'Good night';
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
