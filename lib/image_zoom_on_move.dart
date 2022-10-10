library image_zoom_on_move;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ImageZoomOnMove extends StatefulWidget {
  final Image image;
  final double? width;
  final double? height;
  final MouseCursor? cursor;
  final void Function()? onTap;

  const ImageZoomOnMove({
    this.height,
    this.width,
    this.cursor = SystemMouseCursors.zoomIn,
    this.onTap,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  State<ImageZoomOnMove> createState() => _ImageZoomOnMoveState();
}

class _ImageZoomOnMoveState extends State<ImageZoomOnMove> {
  final _transController = TransformationController();

  void _onMove(PointerHoverEvent details) {
    final x = details.localPosition.dx;
    final y = details.localPosition.dy;

    _transController.value = Matrix4.identity()
      ..translate(-x, -y)
      ..scale(2.0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: MouseRegion(
          cursor: widget.cursor!,
          onExit: (details) {
            _transController.value = Matrix4.identity();
          },
          onHover: _onMove,
          child: InteractiveViewer(
            transformationController: _transController,
            child: widget.image,
          ),
        ),
      ),
    );
  }
}
