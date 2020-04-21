import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gridview/drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static final GlobalKey<ScaffoldState> scaffoldKey =
  new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: new Icon(
              Icons.sort,
              color: Colors.white,
              size: 25.0,

            ),
          ),
        ),
        drawer: Drawer(child: SettingsPage()),
        body: Center(child: Text('home')),
      ),
    );
  }
}
