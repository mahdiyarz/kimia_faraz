import 'package:flutter/material.dart';

import '../DATA_BASE.dart';
import '../models/product_model.dart';
import '../widgets/items_scroll_view.dart';

class BrandTypeDetailsSc extends StatelessWidget {
  final int brandId;

  const BrandTypeDetailsSc({
    Key? key,
    required this.brandId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Brands brands =
        brandData.firstWhere((element) => element.id == brandId);
    final List<Products> products =
        productsData.where((element) => element.brandId == brandId).toList();
    return Scaffold(
      body: ItemsScrollView(
        itemName: brands.name,
        itemLatinName: brands.latinName,
        itemImage: brands.image,
        productsList: products,
        showBrands: false,
      ),
    );
  }
}
