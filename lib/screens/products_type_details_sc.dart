import 'package:flutter/material.dart';

import '../DATA_BASE.dart';
import '../models/product_model.dart';
import '../widgets/items_scroll_view.dart';

class ProductsTypeDetailsSc extends StatelessWidget {
  final int categoryId;
  const ProductsTypeDetailsSc({
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
      body: ItemsScrollView(
        itemName: category.name,
        itemLatinName: category.latinName,
        itemImage: category.image,
        productsList: products,
        showBrands: true,
      ),
    );
  }
}
