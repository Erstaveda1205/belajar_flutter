import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF5722)), // Warna oranye
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '9074'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = 'Erstaveda Diyanretno'; // Nama pengguna

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF5722), // Mengubah warna AppBar menjadi oranye
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _name,
              style: const TextStyle(
                fontSize: 28, // Ukuran font yang lebih besar
                fontWeight: FontWeight.bold,
                color: Colors.redAccent, // Warna teks merah
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Aksi saat tombol cari ditekan
        },
        backgroundColor: const Color.fromARGB(255, 12, 105, 180), // Warna biru untuk FAB
        label: const Text("Cari"), // Teks pada FAB
        icon: const Icon(Icons.search), // Ikon pada FAB
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: const [
              ListTile(
                leading: Icon(Icons.list),
                title: Text("List"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Login"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Tambah",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: "Hapus",
          ),
        ],
      ),
    );
  }
}
