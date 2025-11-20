import 'package:flutter/material.dart';
import 'dart:io';
import 'filter_selector.dart';

class PhotoFilterCarousel extends StatefulWidget {
  final String imagePath;

  const PhotoFilterCarousel({super.key, required this.imagePath});

  @override
  State<PhotoFilterCarousel> createState() => _PhotoFilterCarouselState();
}

class _PhotoFilterCarouselState extends State<PhotoFilterCarousel> {
  // Warna dan label yang sudah disesuaikan satu per satu
  final List<Map<String, dynamic>> _filterData = [
    {'color': Colors.white, 'label': 'Normal'},
    {'color': Colors.blue, 'label': 'Blue'},
    {'color': Colors.red, 'label': 'Red'},
    {'color': Colors.green, 'label': 'Green'},
    {'color': Colors.yellow, 'label': 'Yellow'},
    {'color': Colors.orange, 'label': 'Orange'},
    {'color': Colors.purple, 'label': 'Purple'},
    {'color': const Color.fromARGB(255, 222, 91, 134), 'label': 'Pink'},
    {'color': Colors.cyan, 'label': 'Cyan'},
    {'color': Colors.teal, 'label': 'Teal'},
    {'color': Colors.deepOrange, 'label': 'Deep Orange'},
    {'color': const Color.fromARGB(255, 153, 216, 245), 'label': 'Light Blue'},
    {'color': Colors.deepPurple, 'label': 'Deep Purple'},
    {'color': Colors.lime, 'label': 'Lime'},
    {'color': Colors.indigo, 'label': 'Indigo'},
  ];

  List<Color> get _filters => _filterData.map((e) => e['color'] as Color).toList();
  List<String> get _labels => _filterData.map((e) => e['label'] as String).toList();

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: _buildPhotoWithFilter(),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: ValueListenableBuilder<Color>(
              valueListenable: _filterColor,
              builder: (context, color, child) {
                return FilterSelector(
                  onFilterChanged: _onFilterChanged,
                  filters: _filters,
                  labels: _labels,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        return ColorFiltered(
          colorFilter: ColorFilter.mode(color.withOpacity(0.5), BlendMode.color),
          child: Image.file(
            File(widget.imagePath),
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}