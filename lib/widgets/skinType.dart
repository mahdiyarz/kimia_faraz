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
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        right: 20,
      ),
      child: Text(
        product.skinType,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Theme.of(context).canvasColor,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
