// import 'package:belanja/models/item.dart';
// import 'package:flutter/material.dart';

// class ItemPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     final item = ModalRoute.of(context)!.settings.arguments as Item;

//     return Scaffold(
//       appBar: AppBar(title: const Text("Item Page")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Item Name: ${item.name}"),
//             Text("Item Price: ${item.price}"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// file: item_page.dart

import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // Mengambil objek item yang dilewatkan
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(item.name)), // Judul AppBar bisa langsung nama item
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Ubah ke start agar lebih baik untuk detail
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1. Menampilkan Gambar
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                item.image, // Mengambil path gambar dari objek item
                height: 200, // Atur tinggi sesuai kebutuhan
                fit: BoxFit.cover,
              ),
            ),
            
            // Garis pemisah visual
            const Divider(),

            // 2. Menampilkan Nama
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                " ${item.name.toUpperCase()}",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            // 3. Menampilkan Harga
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Price: Rp ${item.price}",
                style: TextStyle(fontSize: 20, color: Colors.green[700]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}