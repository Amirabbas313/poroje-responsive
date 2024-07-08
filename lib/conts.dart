import 'package:flutter/material.dart';

var myappbar = AppBar(
  title: Text(
    'Mobaile',
  ),
  backgroundColor: Colors.grey[900],
  centerTitle: true,
);

var mybackground = Colors.grey[300];

var mydraawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        title: Text('H O M E'),
        leading: Icon(Icons.home),
      ),
      ListTile(
        title: Text('M E S S A G E'),
        leading: Icon(Icons.message),
      ),
      ListTile(
        title: Text('S E T T I N G S'),
        leading: Icon(Icons.settings),
      ),
      ListTile(
        title: Text('L O G O U T'),
        leading: Icon(Icons.output),
      ),
    ],
  ),
);
