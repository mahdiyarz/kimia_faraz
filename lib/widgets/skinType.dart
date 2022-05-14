import 'package:flutter/material.dart';
import '../models/product-model.dart';

class SkinType extends StatelessWidget {
  Products product;
  SkinType({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 25,
        ),
        child: Text(
          product.skinType,
          style: TextStyle(
            color: Theme.of(context).canvasColor,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
