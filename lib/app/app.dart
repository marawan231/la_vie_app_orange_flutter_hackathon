// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../core/resources/route_manager.dart';
import '../core/resources/theme_manager.dart';



class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key); // we dont need default constructor

  MyApp._internal();

  static final MyApp _instance = MyApp._internal(); // single instance

  factory MyApp() => _instance; // factory to get single instance

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
