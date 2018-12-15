import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    Widget layer1 = Container(
child: Column(
  children: <Widget>[
    Column(
      children: <Widget>[
        Container(
          child: Icon(Icons.menu),
          alignment: Alignment(-1, -1),
        ),
        Row(
          children: <Widget>[
            Container(
              child: CircleAvatar(
                  backgroundImage: AssetImage("image/profileimage.jpeg")),
                 constraints: BoxConstraints.tight(Size(150, 150)),
                padding: EdgeInsets.all(10),
              ),


            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text("data"),
                    alignment: Alignment.topRight,
                  ),
                  Container(
                    child: Text("data"),
                    alignment: Alignment(0, -0.1),
                  ),
                  Container(
                    child: Text("data"),
                    alignment: Alignment(0.1, -0.1),

                  ),
                ],
              ),
            )
          ],
        ),
        Container(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                children: <Widget>[
                 Container(
                   child:Text("data"),),
                 Container(
                  padding: EdgeInsets.all(10),
                  child: Text("data"),)
                ],
              ),),
              Center( child: Text("data"),),
                 Center(child: Text("data"),
                 ),
            ],
          ),


    )
            ],
),]

  ));



    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('inspire'),
        ),
        body: ListView(
          children: [
            layer1,

          ], // children closed
        ), // body closed
      ), // home closed
    ); // material app closed



}

}


