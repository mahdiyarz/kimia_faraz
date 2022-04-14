import 'package:flutter/cupertino.dart';

class ProductBrand {
  final String brandName;
  final Image brandImage;

  ProductBrand(this.brandName, this.brandImage);
}

class IntroProduct {
  final String productName;
  final String productGroup;
  final Image productImage;
  final List<String> introduce;

  IntroProduct(
      this.productName, this.productGroup, this.productImage, this.introduce);
}
