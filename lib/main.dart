import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: Home(),
      ),
      theme: ThemeData(
        canvasColor: Color.fromARGB(255, 246, 244, 210),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 212, 224, 155),
          onPrimary: const Color.fromARGB(255, 0, 0, 0),
          secondary: const Color.fromARGB(255, 241, 156, 121),
          onSecondary: const Color.fromARGB(255, 0, 0, 0),
          error: const Color.fromARGB(255, 164, 74, 63),
          onError: const Color.fromARGB(255, 255, 255, 255),
          primaryContainer: const Color.fromARGB(255, 203, 223, 189),
        ),
      ),
    ),
  );
}
