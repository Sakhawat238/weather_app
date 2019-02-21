import 'package:flutter/material.dart';

class HomeWeatherInfo extends StatelessWidget {
  final Future<Map> futureData;

  HomeWeatherInfo({this.futureData});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureData,
      builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
        if(snapshot.hasData){
          Map data = snapshot.data;
          print(data.toString());
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            color: Color.fromRGBO(0, 0, 0, 0.6),
            alignment: Alignment.bottomCenter,
            child: Column(
              children: <Widget>[
                Text(
                  data['main']['temp'].toString()+" F",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Min temp: ',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),
                    ),
                    Text(
                      '${data['main']['temp_min'].toString()} F',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    Text(
                      'Max temp: ',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),
                    ),
                    Text(
                      '${data['main']['temp_max'].toString()} F',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Humidity: ',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),
                    ),
                    Text(
                      '${data['main']['humidity'].toString()}',
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    ),
                    Text(
                      'Pressure: ',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),
                    ),
                    Text(
                      '${data['main']['pressure'].toString()}',
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    '${data['weather'][0]['main']}',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                  )
                ),
              ],
            ),
          );
        }else {
          return Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            color: Color.fromRGBO(0, 0, 0, 0.6),
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

