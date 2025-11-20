// File: widget/filter_item.dart
import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({
    super.key,
    required this.onFilterSelected,
    required this.color,
    required this.label,
    required this.isSelected,
  });

  final VoidCallback onFilterSelected;
  final Color color;
  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: onFilterSelected,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isSelected ? 50 : 42,
            height: isSelected ? 50 : 42,
            margin: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: color.withOpacity(0.7),
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected 
                    ? Colors.white 
                    : Colors.white.withOpacity(0.6),
                width: isSelected ? 2.5 : 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(isSelected ? 0.4 : 0.3),
                  blurRadius: isSelected ? 6 : 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 6),
        AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 300),
          style: TextStyle(
            color: Colors.white.withOpacity(isSelected ? 1.0 : 0.7),
            fontSize: isSelected ? 12 : 10,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
          child: Text(label),
        ),
      ],
    );
  }
}