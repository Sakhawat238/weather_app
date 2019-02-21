import 'package:flutter/material.dart';

class HomeBgImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'images/img03.jpg',
        width: 400,
        height: 1000,
        fit: BoxFit.fill,
      ),
    );
  }
}