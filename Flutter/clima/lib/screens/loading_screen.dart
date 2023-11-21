

import 'dart:convert';

import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

const apiKey = "4d35fbe8fe99bb5a77fb75c2ecd3994b";

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  double? latitude;
  double? longitude;

  @override
  void initState(){
    super.initState();
    runBoth();

  }

  runBoth() async {
    await getLocation();
    await getData();
  }
  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.


  getLocation() async {
    Location location = Location();
    await location.getCorrentLocation();
    longitude = location.longitude;
    latitude = location.latitude;
  }

  getData() async{
    final url = Uri.parse("https://api.openweathermap.org/data/2.5/forecast?lat=$latitude&lon=$longitude&appid=$apiKey");
    //https://api.openweathermap.org/data/2.5/forecast?lat=23.2418599&lon=72.6272792&appid=4d35fbe8fe99bb5a77fb75c2ecd3994b
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      String data = response.body;
      dynamic decodedData = jsonDecode(data);


      double temperature = decodedData['list'][0]['main']['temp'];
      int condition = decodedData['list'][0]["weather"][0]["id"];
      String cityName = decodedData['city']['name'];
      print(temperature);
      print(condition);
      print(cityName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
