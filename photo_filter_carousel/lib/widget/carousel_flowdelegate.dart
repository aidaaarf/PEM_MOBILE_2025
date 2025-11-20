// File: widget/carousel_flowdelegate.dart
import 'package:flutter/rendering.dart';

class CarouselFlowDelegate extends FlowDelegate {
  CarouselFlowDelegate({
    required this.viewportOffset,
    required this.filtersPerScreen,
  }) : super(repaint: viewportOffset);

  final ViewportOffset viewportOffset;
  final int filtersPerScreen;

  @override
  void paintChildren(FlowPaintingContext context) {
    final double itemSize = context.size.width / filtersPerScreen;
    final double centerX = context.size.width / 2;
    final double scrollOffset = viewportOffset.pixels;
    
    for (int i = 0; i < context.childCount; i++) {
      final double x = i * itemSize - scrollOffset;
      final double itemCenterX = x + itemSize / 2;
      final double distanceFromCenter = (itemCenterX - centerX).abs();
      
      // Hitung seberapa dekat item dengan tengah (0.0 = tepat di tengah, 1.0 = di tepi)
      final double normalizedDistance = distanceFromCenter / (itemSize * 1.5);
      final double closenessToCenter = 1.0 - normalizedDistance.clamp(0.0, 1.0);
      
      // Scaling: item di tengah = 1.4x, item di tepi = 0.8x
      final double scale = 0.8 + (closenessToCenter * 0.6);
      
      // Opacity: item di tengah = 1.0, item di tepi = 0.5
      final double opacity = 0.5 + (closenessToCenter * 0.5);
      
      final double scaledItemSize = itemSize * scale;
      final double yOffset = (context.size.height - scaledItemSize) / 2;
      
      context.paintChild(
        i,
        transform: Matrix4.identity()
          ..translate(x + (itemSize - scaledItemSize) / 2, yOffset)
          ..scale(scale, scale),
        opacity: opacity,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CarouselFlowDelegate oldDelegate) {
    return oldDelegate.viewportOffset != viewportOffset;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(constraints.maxWidth, constraints.maxHeight);
  }
}