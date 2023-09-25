import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invoice_app/Utils/app_routes.dart';
void main()
{
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    routes: screen_routes,
  ));
}