import 'package:flutter/material.dart';
import 'package:greenjobs/responsive/mobileScaffold.dart';
import 'package:greenjobs/responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: responsiveLayout(
        mobileScaffold: const mobileScafford(),
      ),
    );
  }
}
