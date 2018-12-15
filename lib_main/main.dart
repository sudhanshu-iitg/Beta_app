import 'package:flutter/material.dart';
import './post.dart' as post;
import './challenges_list.dart' as list; 
import 'profile.dart' as profile;

import 'profile_other.dart';

//import './secondpage.dart' as secondpage;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Tabs app'),
        backgroundColor: Colors.teal,
        bottom: new TabBar(
            controller: controller,
            tabs: <Widget>[
            new Tab(icon: new Icon(Icons.access_alarm)),
            new Tab(icon: new Icon(Icons.account_balance)),
            new Tab(icon: new Icon(Icons.access_time)),
          ],
      ),
        ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new post.MyApp(),
          new list.MyApp(),
          new profile.MyApp(),
          FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.pinkAccent,
            child: Icon(Icons.add),
          ),
        ],
      )
    );
  }
}