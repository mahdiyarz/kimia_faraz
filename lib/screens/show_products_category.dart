import 'package:flutter/material.dart';

import '../widgets/carts_groups.dart';
import '../widgets/setting_icon.dart';
import '../DATA_BASE.dart';
import '../screens/products_cat_lists.dart';

class ShowProductsCategory extends StatelessWidget {
  const ShowProductsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, _width / 20, _width / 17, _width / 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'کیمیا فراز گیل',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.black.withOpacity(.6),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: _width / 45),
                    Text(
                      'ارائه دهنده برترین محصولات تخصصی پوست و مو',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              CartsGroups(
                imageUrlFirstCard: categoryData[0].image,
                titleFirstCard: categoryData[0].name,
                routeFirstCard: const ProductsCatLists(categoryId: 1),
                imageUrlSecondCard: categoryData[1].image,
                titleSecondCard: categoryData[1].name,
                routeSecondCard: const ProductsCatLists(categoryId: 2),
                imageUrlThirdCard: categoryData[2].image,
                titleThirdCard: categoryData[2].name,
                routeThirdCard: const ProductsCatLists(categoryId: 3),
              ),
              CartsGroups(
                imageUrlFirstCard: categoryData[3].image,
                titleFirstCard: categoryData[3].name,
                routeFirstCard: const ProductsCatLists(categoryId: 4),
                imageUrlSecondCard: categoryData[4].image,
                titleSecondCard: categoryData[4].name,
                routeSecondCard: const ProductsCatLists(categoryId: 5),
                imageUrlThirdCard: categoryData[5].image,
                titleThirdCard: categoryData[5].name,
                routeThirdCard: const ProductsCatLists(categoryId: 6),
              ),
              CartsGroups(
                imageUrlFirstCard: categoryData[6].image,
                titleFirstCard: categoryData[6].name,
                routeFirstCard: const ProductsCatLists(categoryId: 7),
                imageUrlSecondCard: categoryData[7].image,
                titleSecondCard: categoryData[7].name,
                routeSecondCard: const ProductsCatLists(categoryId: 8),
                imageUrlThirdCard: categoryData[8].image,
                titleThirdCard: categoryData[8].name,
                routeThirdCard: const ProductsCatLists(categoryId: 9),
              ),
              CartsGroups(
                imageUrlFirstCard: categoryData[9].image,
                titleFirstCard: categoryData[9].name,
                routeFirstCard: const ProductsCatLists(categoryId: 10),
                imageUrlSecondCard: categoryData[10].image,
                titleSecondCard: categoryData[10].name,
                routeSecondCard: const ProductsCatLists(categoryId: 11),
                imageUrlThirdCard: '',
                titleThirdCard: '',
                routeThirdCard: null,
              ),
              SizedBox(height: _width / 5),
            ],
          ),
          const SettingIcon(),
        ],
      ),
    );
  }
}
