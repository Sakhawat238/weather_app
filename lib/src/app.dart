import 'package:flutter/material.dart';
import 'screens/home_page.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather app',
      home: HomePage(),
    );
  }
}