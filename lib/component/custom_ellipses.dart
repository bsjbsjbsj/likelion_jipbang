import 'package:flutter/material.dart';

class MyTextPainter extends CustomPainter {
  final TextSpan text;
  final int maxLines;
  final String ellipsis;

  MyTextPainter(
      {required this.text, required this.ellipsis, required this.maxLines})
      : super();

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size) {
    TextPainter painter = TextPainter(
      text: text,
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
    )..ellipsis = this.ellipsis;
    painter.layout(maxWidth: size.width);
    painter.paint(canvas, Offset(0, 0));
  }
}
