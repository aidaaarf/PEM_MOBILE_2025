import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'basic_widgets/image_widget.dart';
import 'basic_widgets/dialog_widget.dart';
import 'basic_widgets/date_picker_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aida Flutter',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aida's Increment App")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MyImageWidget(),        // logo
            const SizedBox(height: 20),
            const DialogWidget(),         // tombol alert
            const SizedBox(height: 20),
            const TextField(              // text field
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nama',
              ),
            ),
            const SizedBox(height: 20),
            DatePickerWidget(),           // date picker
            const SizedBox(height: 20),

            // 👇 Tambahin LoadingCupertino di sini
            const Text("Contoh Button:"),
            const SizedBox(height: 10),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("FAB pressed!")),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}
