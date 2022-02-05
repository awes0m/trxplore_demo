import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:trxplore_demo/providers/places.dart';
import 'package:trxplore_demo/screens/about_us_screen.dart';

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
    return ChangeNotifierProvider(
      create: (ctx) => Places(),
      child: MaterialApp(
        title: 'Trxplore',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: mBackgroundColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.lightGreen,
        ),
        builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE), //mobile
            const ResponsiveBreakpoint.resize(800, name: TABLET), //tablet
            const ResponsiveBreakpoint.resize(1000, name: TABLET), //tablet
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP), //desktop
            const ResponsiveBreakpoint.resize(2460, name: "4k"), //4k
          ],
        ),
        // ignore: prefer_const_constructors
        home: HomeScreen(),
        routes: {
          DetailScreen.routeName: (ctx) => const DetailScreen(),
          AboutUsScreen.routeName: (ctx) => const AboutUsScreen(),
        },
      ),
    );
  }
}
