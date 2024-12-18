import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Layouts Cowokku"),
        ),
        body: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: Image.asset("image/sunghoon3.jpeg")),
                Expanded(child: Image.asset("image/sunghoon3.jpeg")),
                Expanded(child: Image.asset("image/sunghoon3.jpeg")),
              ],
        ),
      ),
    );
  }

  Icon iconWidget() {
    return const Icon(
      Icons.home,
      size: 100,
    );
  }
}
