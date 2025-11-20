import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:photo_filter_carousel/widget/take_picture_screen.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    debugPrint('Camera Error: $e');
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera Filter App - 2341720094',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: cameras.isEmpty
          ? const CameraErrorScreen()
          : TakePictureScreen(camera: cameras.first),
    );
  }
}

class CameraErrorScreen extends StatelessWidget {
  const CameraErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error - 2341720094')),
      body: const Center(
        child: Text(
          'Kamera tidak tersedia atau tidak dapat diakses',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}