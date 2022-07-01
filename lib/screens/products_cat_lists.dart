import 'package:flutter/material.dart';

import '../DATA_BASE.dart';
import '../models/product_model.dart';
import '../widgets/brand_scroll_view.dart';

class ProductsCatLists extends StatelessWidget {
  final int categoryId;
  const ProductsCatLists({
    Key? key,
    required this.categoryId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Category category =
        categoryData.firstWhere((element) => element.id == categoryId);
    final List<Products> products = productsData
        .where((element) => element.categoryId == categoryId)
        .toList();

    return Scaffold(
      body: BrandScrollView(
        brandName: category.name,
        brandLatin: category.latinName,
        brandImage: category.image,
        productsList: products,
        showBrands: true,
      ),
    );
  }
}
