import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

Widget ch = Container(
  child: Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(6.0),
        alignment: Alignment.topLeft,
        height: 25.0,
        child: Icon(Icons.adjust),
      ),
      Container(
        height: 35.0,
        child: Text("60secplank"),
      ),
      Container(
       // height: 115.0,
      
      
          child:Column(
            children:[
          Text("Image to be displayed"),
        Image.asset("image/file.jpeg"),
            ])
 ),
Container(
  height: 115.0,
  child: Container(
    child: Column(
      children: <Widget>[
        Text("about"),
        Text("the paragraph"),
      ],
    ),
  ),
),
      Container(
        height: 115.0,
        child: Container(
          child: Column(
            children: <Widget>[
              Text("How to do it"),
              Text("the paragraph"),
            ],
          ),
        ),
      ),
      Container(
        height: 115.0,
        child: Container(
          child: Column(
            children: <Widget>[
              Text("Uploading details"),
              Text("the paragraph"),
            ],
          ),
        ),
      ),

    ],

  ));

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('inspire'),
        ),
        body: ListView(
          children: [
            ch
          ], // children closed
        ), // body closed
      ), // home closed
    ); // material app closed




}
}

