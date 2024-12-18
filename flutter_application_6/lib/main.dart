import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var expanded = Expanded(
              child: Image.asset(
                'images/makanan.jpeg',
                height: 200,
                fit: BoxFit.cover,
              ),
            );
    const text = Text(
                          'Korean Food',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        );
    const expanded2 = Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text,
                        Text('Alamat'),
                      ],
                    ),
                  );
    var container = Container(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  expanded2,
                ],
              ),
            );
    var column = Column(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.blue[500],
                      ),
                      const Text('CALL'),
                    ],
                  );
    var column2 = Column(
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Colors.blue[500],
                      ),
                      const Text('ROUTE'),
                    ],
                  );
    var column3 = Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue[500],
                      ),
                      const Text('SHARE'),
                    ],
                  );
    var column4 = Column(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.blue[500],
                      ),
                      const Text('LIKE'),
                    ],
                  );
    var container2 = Container(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  column,
                  column2,
                  column3,
                  column4,
                ],
              ),
            );
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            //
            expanded,
            container,
            container2,
          ],
        ),
      ),
    );
  }
}
