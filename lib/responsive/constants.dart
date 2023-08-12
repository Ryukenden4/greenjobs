import 'package:flutter/material.dart';

//background colour declaration
var myDefaultBackground = Colors.white;

//appbar or dashboard colour
var myAppBar = AppBar(
  backgroundColor: Colors.deepPurple,
  centerTitle: true,
  title: const Text(
    'GreenJobs', // Replace this with your desired text
    style: TextStyle(fontSize: 30, color: Colors.green),
  ),
  //create 'login' button on the right side
  actions: <Widget>[
    IconButton(
      icon: const Icon(
        Icons.person,
        color: Colors.white,
      ),
      onPressed: () {
        // do something
      },
    )
  ],
);

//Drawer declaration
var myDrawer = const Drawer(
  backgroundColor: Colors.white,
  //what's inside it
  child: Column(children: [
    DrawerHeader(
        child: Text(
      'GreenJobs',
      style: TextStyle(fontSize: 35),
    )),
    ListTile(leading: Icon(Icons.work), title: Text('Jobs')),
    ListTile(
      leading: Icon(Icons.store),
      title: Text('Companies'),
    ),
    ListTile(leading: Icon(Icons.groups), title: Text('For Employer')),
  ]),
);