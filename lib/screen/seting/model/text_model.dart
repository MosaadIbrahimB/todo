import 'package:flutter/material.dart';
class TextModel extends StatelessWidget {
  const TextModel({
    super.key,
    required this.style, required this.title,
  });

  final TextTheme style;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style.headline3,
    );
  }
}
