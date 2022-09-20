import 'package:flutter/material.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey.shade900,
);

var myDefaultBackground = Colors.grey.shade300;

var myDrawer = Drawer(

  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite_rounded,
        size: 50,)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('D A S H B O A R D'),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text('M E S S A G E'),
      ),
      ListTile(
        leading: Icon(Icons.search),
        title: Text('S E A R C H'),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('L O G O U T'),
      ),
    ],
  ),
);