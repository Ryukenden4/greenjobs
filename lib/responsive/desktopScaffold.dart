// ignore: file_names
import 'package:flutter/material.dart';
import 'package:greenjobs/responsive/constants.dart';

// ignore: camel_case_types
class desktopScaffold extends StatefulWidget {
  const desktopScaffold({super.key});

  @override
  State<desktopScaffold> createState() => desktopScaffoldState();
}

// ignore: camel_case_types
class desktopScaffoldState extends State<desktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      //drawer: myDrawer,
      body: Row(children: [
        //open drawe
        myDrawer,

        //rest of body
      ]),
    );
  }
}
