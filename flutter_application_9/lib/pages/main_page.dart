import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAIN PAGE"),
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text("GO TO SECOND PAGE"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
                },
                child: Text("Go to Other Page"),
            ),
          ],
        ),
      ),
    );
  }
}