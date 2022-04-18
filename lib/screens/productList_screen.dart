import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  String productBrand;
  ProductListScreen({Key? key, required this.productBrand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('محصولات $productBrand'),
        centerTitle: true,
      ),
    );
  }
}
