import 'package:flutter/material.dart';
import './screens/home/home_screen.dart';
import 'utils/constant.dart';
import 'screens/detail/details_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trxplore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: mBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.lightGreen,
      ),
      // ignore: prefer_const_constructors
      home: HomeScreen(),
      routes: {DetailScreen.routeName: (ctx) => const DetailScreen()},
    );
  }
}
