import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Challenges List';

    Widget horilist = Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
  
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    Container(
      width: 160.0,
      color: Colors.red,
    ),
    Container(
      width: 160.0,
      color: Colors.blue,
    ),
    Container(
      width: 160.0,
      color: Colors.green,
    ),
    Container(
      width: 160.0,
      color: Colors.yellow,
    ),
    Container(
      width: 160.0,
      color: Colors.orange,
    ),
  ],
)
,
    );


    Widget verlist = Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      width: 300,
      height:450,
      child: ListView(
      
  
  scrollDirection: Axis.vertical,
  children: <Widget>[
    Container(
      margin: EdgeInsets.all(4),
      height: 80.0,
      color: Colors.red,
    ),
    Container(
      margin: EdgeInsets.all(4),
      height: 80.0,
      color: Colors.blue,
    ),
    Container(
      
      margin: EdgeInsets.all(4),
      height: 80.0,
      color: Colors.green,
    ),
    Container(
      margin: EdgeInsets.all(4),
      height: 80.0,
      color: Colors.yellow,
    ),
    Container(
      margin: EdgeInsets.all(4),
      height: 80.0,
      color: Colors.orange,
    ),
  ],
)
,
    );
    

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            horilist,
            verlist,
          ],
        ),
      ),
    );
  }
}