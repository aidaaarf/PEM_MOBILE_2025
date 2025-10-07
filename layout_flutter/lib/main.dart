import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget get titleSection => Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: const Text(
                  'Wisata Pantai di Malang',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Text(
                'Malang, Jawa Timur, Indonesia',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Icon(Icons.star, color: Colors.red[500]),
        const Text('41'),
      ],
    ),
  );

  Widget get textSection => Container(
    padding: const EdgeInsets.all(32),
    child: const Text(
      'Pantai Teluk Asmara - Jawa Timur '
      'dikenal sebagai surganya wisata alam di Indonesia. '
      'Pantai yang mendapat julukan Raja Ampat-nya Malang. '
      'Aida Rahma Fadhila - 2341720094 ',
      softWrap: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    // Langkah 2: Buat widget buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget imageSection = Image.asset(
      'images/pantai.jpg', // Pastikan aset ini ada dan terdaftar di pubspec.yaml
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );

    return MaterialApp(
      title: 'Flutter layout: Aida Rahma Fadhila 234172009',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [imageSection, titleSection, buttonSection, textSection],
        ),
      ),
    );
  }

  // --- Method _buildButtonColumn
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
