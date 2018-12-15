import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    Widget layer1 = Container(
decoration: BoxDecoration(
  border: Border.all(
    color: Colors.purple[100],
    width:5,
  )
),
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
              child: 
               CircleAvatar(
                 backgroundImage: AssetImage("image/profileimage.jpeg")),
                constraints: BoxConstraints.tight(Size(150, 150)),
                padding: EdgeInsets.all(10),
              ),


            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Text("Jonathan doahu", style: TextStyle(
                      fontSize: 28,
                    
                    ),),
                    
                  ),
                  Container(
                    child: Text("@from oklahoma"),
                    //alignment: Alignment.centerLeft,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text("inspiring 125 people",style: TextStyle(
                      fontSize: 18
                    ),),
                    alignment: Alignment(0.1, -0.1),

                  ),
                ],
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            border: BorderDirectional(
              top: BorderSide(
                width: 5,
                color: Colors.purple[100],
              )
            )
            
              
                        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                children: <Widget>[
                 Container(
                   child:Text("Stars",style: TextStyle(fontSize: 20),),),
                 Container(
                  padding: EdgeInsets.all(10),
                  child: Text("3.5",style: TextStyle(fontSize: 20),)),
                   Container(
                  padding: EdgeInsets.all(10),
                  child: Text("USer Ratings",style: TextStyle(fontSize: 20),),),
                   Container(
                  padding: EdgeInsets.all(10),
                  child: Text("3.5",style: TextStyle(fontSize: 20),),),
                ],
              ),),
             
                 
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


