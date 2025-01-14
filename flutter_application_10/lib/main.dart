import 'package:flutter/material.dart';
import 'package:flutter_application_10/pages/home_page.dart';
import 'package:flutter_application_10/pages/profile_page.dart';

void main() {
  runApp (const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
