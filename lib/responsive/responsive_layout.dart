import 'package:flutter/material.dart';

// ignore: camel_case_types
class responsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;

  responsiveLayout({required this.mobileScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return mobileScaffold;
    });
  }
}
