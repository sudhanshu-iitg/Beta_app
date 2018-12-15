import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    _verticalDivider(double w) => BoxDecoration(   border: Border.all( color: Color.fromRGBO(255, 100 , 203 , 100) , width: w )
    );

    boxMaker(double h,int r,int g ,int b,)
    {
      return Container(
        height:h,
        width : 1000.0,
        decoration : new BoxDecoration(
          shape: BoxShape.rectangle,
          border : new Border.all(color : Colors.black, width : 2.0),
          color : Color.fromRGBO(r, g, b, 100),
        ), //decoration box closed
      );// conatiner  closed
    }

    Widget layer1;
    layer1 = Container(
      padding :EdgeInsets.all(1.0),
    //  height : 1000.0, // no idea about pixels ..just random
// width : 1000,
      child :Column(
        children: <Widget>[

           // Image.asset( "image/file.jpeg",height :350.0,width :390.0, ),
        Container(
        height :300.0, width : 390.0,

        decoration: BoxDecoration(
           color: const Color(0xff7c94b6),
          image: DecorationImage(
            image: ExactAssetImage('image/file.jpeg'),
            fit: BoxFit.cover,
          ),)
        ),

          boxMaker(250,192,192,192 ),
          boxMaker(100, 250,250,250),
          boxMaker(100, 192,192,192),
          boxMaker(150, 250,250,250),

         ],


        // children closed

      ),// row closed



    );// layer1 container closed


    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(

          children : [ Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon, color: color),
              Center(

                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: color,

                  ), // style closed
                ), // text closed
              ), // center closed
            //  Icon(icon, color: color),
            ], // children closed
          ), // row closed
          ]   ); // column closed
    } // block closed


    Widget layer2=Container(

      padding :EdgeInsets.all(8.0),
      height : 900.0, // no idea about pixels ..just random
      width : 390.0,
      child :Column(
        children:[

          Container(
            height :55.0, width : 390.0,
              alignment: Alignment.topLeft,

              child: Icon(Icons.menu),


          ),// container closed
          Container(
            height :155.0, width : 155.0,
            child: CircleAvatar(
                backgroundImage: AssetImage("image/pic.jpg"),

          ),),// container closed

          Container(
            height :115.0, width : 390.0,
            child: Center(
                child : Text( "Jonathan Daohau" , style: TextStyle(fontSize : 30.0) , )
            )
          ),//
        //container closed

          Container(
            padding: EdgeInsets.fromLTRB(00, 5.0, 00, 00),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,color: Colors.grey
            ),
            height :65.0, width : 290.0,
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children : [
                buildButtonColumn( Icons.star , "09"),
                buildButtonColumn( Icons.star , "16"),
                buildButtonColumn( Icons.star , "3.06"),

              ], // children closed


            ),// row closed


          ),// container closed

      Container(
        height :45.0, width : 390.0,
       child : Center(
         child  : Text("inspiring 125 people", style : TextStyle(fontSize : 20.0),),
      ),// center closed


    ),
      Container(
        height :50.0, width : 390.0,
        decoration : new BoxDecoration(
          shape: BoxShape.rectangle,
          border : new Border.all(color : Colors.black, width : 2.0),
          color : Colors.pink,
        ), //decoration box closed
       child : Center(
          child : Text("GET INSPIRE",style : TextStyle(fontSize : 40.0),),


      ),// center closed


    ), // container closed

// container closed



    ], // children closed

      ), // column closed


    ); // layer 2 container closed
    Widget st=Container(
      height : 900.0, // no idea about pixels ..just random
      width : 390.0,
      child : new Stack(
        children :[
          layer1,
          layer2,
        ], // children closed
      ), // stack closed

    ); // container closed



    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('inspire'),
        ),
        body: ListView(
          children: [
                   st
          ], // children closed
        ), // body closed
      ), // home closed
    ); // material app closed




  }
}


