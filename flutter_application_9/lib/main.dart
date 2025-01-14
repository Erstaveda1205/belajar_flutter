import 'package:flutter/material.dart';
import 'package:flutter_application_9/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  // this widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(onGenerateRoute: RouteGenerator.generateRoute);
  }
}