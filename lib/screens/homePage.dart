import 'package:flutter/material.dart';

import '../models/product-model.dart';
import '../widgets/brandScrollView.dart';

import '../DATA_BASE.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: brandLength,
        itemBuilder: (context, index) {
          List<Products> products = productsData
              .where((element) => element.brandId == brandData[index].id)
              .toList();
          List<Brands> brands = brandData
              .where((element) => element.image.contains('.png'))
              .toList();

          return index + 1 <= brandData.length
              ? BrandScrollView(
                  brandName: brands[index].name,
                  brandLatin: brands[index].latinName,
                  brandImage: brands[index].image,
                  productList: products,
                )
              : Container();
        },
      ),
    );
  }

// Remove those products which don't hove any pictures
  int get brandLength {
    int finalLength = 0;
    int length = brandData.length;
    bool brandImages;
    for (var i = 0; i < length; i++) {
      brandImages = brandData[i].image.contains('.png');
      if (brandImages == true) {
        finalLength = finalLength + 1;
      }
    }

    return finalLength;
  }
}
