import 'package:flutter/material.dart';
import 'package:dice_roll/gradinet.dart';

// cntl+space=suggestion
void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: GradientColor(Colors.deepOrange, Colors.deepPurple)),
    ),
  );
}
