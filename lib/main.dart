import 'package:flutter/material.dart';
import './screens/home.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Home(),
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 212, 224, 155),
      ),
    ),
  );
}
