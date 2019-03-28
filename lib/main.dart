import 'package:flutter/material.dart';
import 'package:very_good_ventures_app/about_me.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nathan Koellikers Very Good Ventures Demo App',
      theme: ThemeData(
        canvasColor: Color(0xff003366),
      ),
      home: AboutMePage(),
    );
  }
}