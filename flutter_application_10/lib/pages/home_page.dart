import 'package:flutter/material.dart';
import 'package:flutter_application_10/pages/profile_page.dart';

class HomePage extends StatelessWidget{
  final myController = TextEditingController();
  HomePage({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onTap: () => myController.clear(),
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Name',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile',
              arguments: myController.text);
            },
            child: const Text("Enter"),
          ),
        ],
      ),
    );
  }
}