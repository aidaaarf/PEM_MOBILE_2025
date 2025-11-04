import 'package:flutter/material.dart';
import 'dart:io';

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture - 2341720094')),
      body: Center(
        child: Image.file(
          File(imagePath),
          fit: BoxFit.cover, 
        ),
      ),
    );
  }
}