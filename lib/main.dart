import 'package:flutter/material.dart';
import 'screens/homePage.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: HomePage(),
      ),
      theme: ThemeData(
        canvasColor: const Color.fromARGB(255, 101, 93, 138),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 120, 151, 171),
          onPrimary: const Color.fromARGB(255, 255, 255, 255),
          secondary: const Color.fromARGB(255, 216, 133, 163),
          onSecondary: const Color.fromARGB(255, 255, 255, 255),
          error: const Color.fromARGB(255, 164, 74, 63),
          onError: const Color.fromARGB(255, 255, 255, 255),
          primaryContainer: const Color.fromARGB(255, 253, 206, 185),
        ),
      ),
    ),
  );
}
