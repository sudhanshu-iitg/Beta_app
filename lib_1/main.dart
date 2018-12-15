import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    vertical_Divider() => BoxDecoration(   border: Border.all( color: Color.fromRGBO(355, 100 , 203 , 100) , width: 5.0 )
     );
    Widget titleSection;
    titleSection = Container(
      padding: EdgeInsets.all(16.0),
      decoration: vertical_Divider() ,
      child :Row(
        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
          children : [
            Container(
              child:CircleAvatar( backgroundImage: AssetImage("image/profileimage.jpeg"),),
            //  constraints: BoxConstraints.expand(),  
    ), //expaned closed
                        Expanded(
                           flex :2,
                            child : Column(
                              crossAxisAlignment : CrossAxisAlignment.start,
                                children :[


                                 Center(
                                    child : Text("@Issac Reid",style :TextStyle( fontWeight : FontWeight.bold, color : Colors.grey[500]),

                                                ),//Text1 closed

                                        ),// Center closed
                                  Center(
                                      child :  Text( "from Oklahoma",style :TextStyle(color : Colors.grey[500],),
                                            ),) // text2 closed
                                           ], // children closed
                                         ), // column closed
                                  ), //expanded closed
                                  Expanded(
                                    flex : 2,
                                    child : Column(
                                   crossAxisAlignment: CrossAxisAlignment.end,
                                    children : [
   // Center (
    // iska alignment mein bhi doubt hae
    //), //center closed
                                      Text( "09 stars, 2.15 rating",style :TextStyle(color : Colors.grey[500],),
                                           )], // children closed
                                        ), // column closed
                                      ), //expanded closed
                                     ] , // children ends
                                    ) , //row ends
                                  ); //title section  container ends
Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return Column(
        
        children : [ Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Icon(icon, color: color),
          Center(
            
            child: Text(
              label,
              style: TextStyle( // just random size ..needed to be changed i guess
                fontSize: 12.0, 
                fontWeight: FontWeight.w400,
                color: color,

              ), // style closed
            ), // text closed
          ), // center closed
        ], // children closed
), // row closed
   ]   ); // column closed
    } // block closed


    verticalDivider() => BoxDecoration(   border: Border.all( color: Color.fromRGBO(355, 100 , 203 , 100) , width: 5.0 )
     );
Widget middlesection = Container(
  decoration: verticalDivider(),
padding: EdgeInsets.all(10.0),
child: Column(
  
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    Image.asset( "image/file.jpeg" ),
    Text("the paragraph shall come here"),
  ],
),

);
Widget bottomSection = Container(
	padding : const EdgeInsets.all(32.0),
    decoration: verticalDivider(),

    child : Row(
	mainAxisAlignment : MainAxisAlignment.end,
	children :[
	buildButtonColumn( Icons.star , "4.3"),
	buildButtonColumn(Icons.star, "12"),  // icon for messages??

] // children ends

) // child row ends
	); // bottomSection ends 

    
    
    return MaterialApp(
    title: 'Flutter Demo',
    home: Scaffold(
    appBar: AppBar(
    title: Text('inspire'),
                  ),
    body: ListView(
      children: [
      titleSection,
      middlesection,
      bottomSection,
                ], // children closed
              ), // body closed
            ), // home closed
          ); // material app closed
        }
      }
