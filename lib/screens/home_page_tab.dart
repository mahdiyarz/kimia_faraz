import 'package:flutter/material.dart';

import '../screens/brand_category.dart';
import '../screens/favorite_products.dart';
import '../screens/product_category.dart';

class HomePageTab extends StatefulWidget {
  const HomePageTab({Key? key}) : super(key: key);

  @override
  State<HomePageTab> createState() => _HomePageTabState();
}

class _HomePageTabState extends State<HomePageTab> {
  List<Widget>? _pages;
  int _selectedPageIndex = 1;

  @override
  void initState() {
    _pages = [
      const ProductCategory(),
      const BrandCategory(),
      const FavoriteProducts(),
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'کیمیا فراز گیل',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: _pages![_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: Colors.amberAccent,
        selectedItemColor: Colors.blueAccent,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sort_sharp),
            label: 'نوع کالا',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adobe),
            label: 'برندها',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add),
            label: 'نشان شده ها',
          ),
        ],
      ),
    );
  }
}
