// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});
  @override
  Widget build(context) {
    return const Text(
      "Hello! Sufi",
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
