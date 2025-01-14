import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});

  @override 
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name, 
                style: const TextStyle(fontSize: 40.0, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}