import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screens/show_products_category.dart';
import '../screens/show_brand_category.dart';
import '../screens/show_favorites.dart';
import '../screens/show_search.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  List<Widget>? _pages;
  int currentIndex = 0;
  final List<IconData> iconList = [
    Icons.home_rounded,
    Icons.category,
    Icons.favorite_rounded,
    Icons.search_rounded,
  ];

  @override
  void initState() {
    _pages = [
      const ShowBrandCategory(),
      const ShowProductsCategory(),
      const ShowFavorites(),
      const ShowSearch(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          _pages![currentIndex],
          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                child: Container(
                  height: width * .155,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.15),
                          blurRadius: 30,
                          offset: const Offset(0, 10)),
                    ],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: width * .024),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                          HapticFeedback.lightImpact();
                        });
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: width * .2125,
                            child: Center(
                              child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                height: index == currentIndex ? width * .12 : 0,
                                width:
                                    index == currentIndex ? width * .2125 : 0,
                                decoration: BoxDecoration(
                                  color: index == currentIndex
                                      ? Theme.of(context).colorScheme.primary
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width * .2125,
                            alignment: Alignment.center,
                            child: Icon(
                              iconList[index],
                              size: width * .076,
                              color: index == currentIndex
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Colors.black26,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
