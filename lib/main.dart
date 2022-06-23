import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:kimia_faraz/screens/root_page.dart';
import '../screens/show_brand_category.dart';

import './screens/home.dart';

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
  runApp(
    //* This is regular app without Device Preview Settings
    MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: RootPage(),
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

    //* This is Device Preview Settings
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => MaterialApp(
    //     useInheritedMediaQuery: true,
    //     locale: DevicePreview.locale(context),
    //     builder: DevicePreview.appBuilder,
    //     home: const Directionality(
    //       textDirection: TextDirection.rtl,
    //       child: HomePage(),
    //     ),
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
    //   ),
    // ),
  );
}
