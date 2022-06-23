import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import './screens/brand_category.dart';
import './screens/home_page_tab.dart';

//! Device Preview imports
// import 'package:flutter/foundation.dart';
// import 'package:device_preview/device_preview.dart';

void main() {
  //* Portrait Settings
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  //* This widget is the root of your application.

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //* This is regular app without Device Preview Settings
    return MaterialApp(
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
      initialRoute: '/',
      routes: {
        '/': (ctx) => const HomePageTab(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const BrandCategory());
      },
    );

    //* This is Device Preview Settings
    // return DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => MaterialApp(
    //     useInheritedMediaQuery: true,
    //     locale: DevicePreview.locale(context),
    //     builder: DevicePreview.appBuilder,
    //     theme: ThemeData(
    //       canvasColor: const Color.fromARGB(255, 101, 93, 138),
    //       colorScheme: ColorScheme.fromSwatch().copyWith(
    //         primary: const Color.fromARGB(255, 120, 151, 171),
    //         onPrimary: const Color.fromARGB(255, 255, 255, 255),
    //         secondary: const Color.fromARGB(255, 216, 133, 163),
    //         onSecondary: const Color.fromARGB(255, 255, 255, 255),
    //         error: const Color.fromARGB(255, 164, 74, 63),
    //         onError: const Color.fromARGB(255, 255, 255, 255),
    //         primaryContainer: const Color.fromARGB(255, 253, 206, 185),
    //       ),
    //     ),
    //     initialRoute: '/',
    //     routes: {
    //       '/': (ctx) => const HomePageTab(),
    //
    //     },
    //     onUnknownRoute: (settings) {
    //       return MaterialPageRoute(builder: (ctx) => const BrandCategory());
    //     },
    //   ),
    // );
  }
}
