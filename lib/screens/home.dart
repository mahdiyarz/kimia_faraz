import 'package:flutter/material.dart';

import '../screens/showBrandImage.dart';

import '../widgets/brandBoardcast.dart';
import '../widgets/scrollableSheet.dart';

import '../DATA_BASE.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: brandData.length,
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemBuilder: (context, index) => Container(
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).colorScheme.primary,
            child: Stack(
              children: [
                ShowBrandImage(index: index),
                BrandBoardcast(index: index),
                const ScrollableSheet(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
