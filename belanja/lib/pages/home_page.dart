import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    // Pastikan Anda sudah menambahkan gambar ini ke folder assets dan daftarkan di pubspec.yaml
    Item(name: 'sugar', price: 5000, image: 'assets/sugar.jpg'), 
    Item(name: 'salt', price: 2000, image: 'assets/salt.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                 Navigator.pushNamed(context, 
                  '/item',
                  arguments: item
                );
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),  
              ),
            );
          },
        ),
      ),
    );
  }
}