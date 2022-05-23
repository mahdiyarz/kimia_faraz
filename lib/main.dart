import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'screens/homePage.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
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
    ),
  );
}
