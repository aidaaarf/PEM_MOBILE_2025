import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Item Page")),
      body: const Center(
        child: Text("Ini halaman detail item"),
      ),
    );
  }
}