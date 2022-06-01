import 'package:flutter/material.dart';

import '../DATA_BASE.dart';
import '../models/product_model.dart';
import '../widgets/brand_scroll_view.dart';

class BrandDetails extends StatelessWidget {
  final int brandId;

  const BrandDetails({
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
      body: BrandScrollView(
        brandName: brands.name,
        brandLatin: brands.latinName,
        brandImage: brands.image,
        productList: products,
      ),
    );
  }
}
