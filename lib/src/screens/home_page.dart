import 'package:flutter/material.dart';
import '../widgets/home_bg_image.dart';
import '../widgets/home_city_name.dart';
import '../widgets/home_weather_info.dart';
import '../resources/weather_api.dart';
import 'city_change_page.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String city = 'Dhaka';
  WeatherApi wa = WeatherApi();

  Future _gotoNextScreen(BuildContext context) async {
    Map results = await Navigator.of(context).push(
      MaterialPageRoute<Map>(
        builder: (BuildContext context){
          return CityChangePage();
        },
      )
    );
    if(results !=null && results.containsKey('cityName')){
      if(results['cityName'] != '') city = results['cityName'];
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        backgroundColor: Colors.blueGrey.shade700,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              _gotoNextScreen(context);
            },
          ),
        ],
      ),
      body: body(),
    );
  }

  Widget body(){
    return Stack(
      children: <Widget>[
        HomeBgImage(),
        ListView(
          children: <Widget>[
            HomeCityName(
              name: city,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25.0),
              alignment: Alignment.center,
              child: Image.asset('images/light_rain.png'),
            ),
            HomeWeatherInfo(
              futureData: wa.getWeather(city),
            ),
          ],
        ),
      ],
    );
  }
}




