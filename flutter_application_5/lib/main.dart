import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// fungsi membuat tombol
Column createButton(String label, IconData icon) {
  return Column(
    children: [
      Icon(
        icon,
        size: 35,
        color: Colors.blue,
      ),
      Container(
        // mengatur jarak teks dengan icon diatasnya
        padding: const EdgeInsets.only(top: 10),
        child: Text(label),
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget expanded = Expanded(
      child: Image.asset(
        'images/makanan.jpeg',
        // tinggi gambar, lebarnya memenuhi layar karena menggunakan Expanded
        height: 500,
        // gambar akan memenuhi layar
        fit: BoxFit.cover,
      ),
    );
    Widget titleSection = Container(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ini enak',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Jl. in aja dulu, nanti juga dapet hikmahnya'),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.blue,
          ),
          Text('150'),
        ],
      ),
    );
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          createButton('CALL', Icons.phone),
          createButton('ROUTE', Icons.near_me),
          createButton('SHARE', Icons.share),
          createButton('LIKE', Icons.thumb_up),
        ],
      ),
    );
    Widget reviewSection = Container(
      padding: const EdgeInsets.all(25),
      child: const Text(
          '''Korean cuisine has evolved through centuries of social and political change. Originating from ancient agricultural and nomadic traditions in Korea and southern Manchuria, Korean cuisine reflects a complex interaction of the natural environment and different cultural trends.
          Ciri khas masakan Korea yang paling utama adalah makanan fermentasi agar makanan tersebut dapat disimpan dan dimakan dalam jangka panjang. Makanan fermentasi yang representatif adalah kimci dan bumbu perasa, seperti pasta kedelai, kecap asin, pasta cabai dan ikan asin.'''),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Food Review'),
        ),
        body: ListView(
          children: [
            expanded,
            titleSection,
            buttonSection,
            reviewSection,
          ],
        ),
      ),
    );
  }
}
