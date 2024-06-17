import 'package:flutter/material.dart';

var myDefaultColor = Colors.grey[300] ;

var myAppBar = AppBar(backgroundColor: Colors.grey[200],);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[200],
  child: const Column(children: [
    DrawerHeader(child: Icon(Icons.favorite)),
    SizedBox(height: 10,),
    ListTile(
      leading: Icon(Icons.home),
      title: Text('H O M E'),
    ),
    SizedBox(height: 10,),
    ListTile(
      leading: Icon(Icons.home),
      title: Text('G E L L A R Y'),
    ),
    SizedBox(height: 10,),
    ListTile(
      leading: Icon(Icons.home),
      title: Text('C O N T A C T'),
    ),
  ],
  ),
);