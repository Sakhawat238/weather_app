import 'package:flutter/material.dart';
import '../widgets/city_bg_image.dart';

class CityChangePage extends StatelessWidget{
  final _cityInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change City'),
        backgroundColor:  Colors.blueGrey.shade700,
      ),
      body: body(context),
    );
  }

  Widget body(BuildContext context){
    return Stack(
      children: <Widget>[
        CityBgImage(),
        ListView(
          children: <Widget>[
            ListTile(
              title: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter city name...',
                ),
                controller: _cityInputController,
                keyboardType: TextInputType.text,
              ),
            ),
            ListTile(
              title: FlatButton(
                onPressed: (){
                  Navigator.pop(context,{
                    'cityName': _cityInputController.text
                  });
                },
                child: Text("Enter"),
                color: Colors.blueGrey,
                textColor: Colors.white70,
              ),
            ),
          ],
        ),
      ],
    );
  }
}