import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData.dark(),
      home: RecipeScreen(),
    );
  }
}

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Recipes', style: TextStyle(color: Colors.white, fontSize: 20)),
        centerTitle: true,
        actions: [
          Icon(Icons.menu, color: Colors.white, size: 24),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_back, color: Colors.white, size: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          children: [
            // Gambar Salad
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Icon(
                  Icons.fastfood,
                  color: Colors.orange,
                  size: 100,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Nama Resep dan Rating
            Text(
              'Salad',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: index < 4 ? Colors.yellow : Colors.grey,
                  size: 20,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Ulasan Pengguna
            Expanded(
              child: ListView(
                children: [
                  ReviewTile(username: 'User1', rating: 5, comment: 'Amazing salad!'),
                  ReviewTile(username: 'User2', rating: 5, comment: 'Good, but can be better.'),
                  ReviewTile(username: 'User3', rating: 4, comment: 'Tasty and fresh!'),
                ],
              ),
            ),
            // Tombol Resep
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Recipe',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewTile extends StatelessWidget {
  final String username;
  final int rating;
  final String comment;

  ReviewTile({
    required this.username,
    required this.rating,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(username, style: TextStyle(color: Colors.white, fontSize: 16)),
      subtitle: Text(comment, style: TextStyle(color: Colors.grey, fontSize: 14)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          5,
          (index) => Icon(
            Icons.star,
            color: index < rating ? Colors.yellow : Colors.grey,
            size: 16,
          ),
        ),
      ),
    );
  }
}
