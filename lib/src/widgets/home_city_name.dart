import 'package:flutter/material.dart';

class HomeCityName extends StatelessWidget{
  final String name;

  HomeCityName({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.fromLTRB(0.0, 10.9, 20.9, 20.0),
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}