import 'package:flutter/material.dart';

class HomeDummyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
      color: Color.fromRGBO(0, 0, 0, 0.6),
      alignment: Alignment.bottomCenter,
      child: Column(
        children: <Widget>[
          Container(
            width: 200,
            height: 50,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 15.0),
          ),
          Container(
            width: 200,
            height: 30,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 10.0),
          ),
          Container(
            width: 200,
            height: 30,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 10.0),
          ),
          Container(
            width: 200,
            height: 30,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 10.0),
          ),
        ],
      ),
    );
  }
}