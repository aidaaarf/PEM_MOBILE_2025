import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:kamera_flutter/widgets/takepicture_screen.dart';

Future<void> main() async {
  // Ensure plugins (camera etc.) are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // List kamera yang tersedia
  final cameras = await availableCameras();

  // Kamera pertama (umumnya belakang)
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        camera: firstCamera,
      ),
    ),
  );
}