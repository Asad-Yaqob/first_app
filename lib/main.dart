import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        colors: [
          Colors.deepPurple,
          Color.fromARGB(255, 107, 3, 125),
        ],
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
