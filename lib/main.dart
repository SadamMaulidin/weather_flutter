import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/viewmodels/CityEntryViewModel.dart';
import 'package:weather_app/viewmodels/ForecastViewModel.dart';
import 'package:weather_app/views/HomeView.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CityEntryViewModel>(
        create: (_) => CityEntryViewModel()),
    ChangeNotifierProvider<ForecastViewModel>(
        create: (_) => ForecastViewModel()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Provider',
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
