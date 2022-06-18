import 'package:flutter/material.dart';

// import '../screens/search_products.dart';
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
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       showSearch(
        //         context: context,
        //         delegate: SearchProducts(),
        //       );
        //     },
        //     icon: const Icon(Icons.search),
        //   ),
        // ],
      ),
      drawer: Drawer(
          backgroundColor: Colors.black26,
          elevation: 10,
          child: Column(
            children: const [
              Text('پایگاه های ما'),
              Text('شماره تماس ها'),
              Text('طراحی و پیاده سازی: مهدیار'),
              Text('انبارداری'),
              Text('ورود به پنل کاربری'),
              Text('تنظیمات'),
            ],
          )),
      body: _pages![_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sort_sharp),
            label: 'نوع کالا',
            backgroundColor: Colors.black45,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adobe),
            label: 'برندها',
            backgroundColor: Colors.black12,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add),
            label: 'نشان شده ها',
            backgroundColor: Colors.black45,
          ),
        ],
      ),
    );
  }
}
