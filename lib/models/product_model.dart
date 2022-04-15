import 'package:flutter/material.dart';

class ProductBrand {
  String brandName;
  String brandImage;
  String brandLatinName;

  ProductBrand({
    required this.brandName,
    required this.brandLatinName,
    required this.brandImage,
  });
}

class IntroProduct {
  String productName;
  String productGroup;
  Image productImage;
  List<String> introduce;

  IntroProduct({
    required this.productName,
    required this.productGroup,
    required this.productImage,
    required this.introduce,
  });
}
