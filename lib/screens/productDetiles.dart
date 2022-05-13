import 'package:flutter/material.dart';
import '../models/product-model.dart';
import '../widgets/points.dart';
import '../widgets/productPicture.dart';
import '../widgets/activeIngredients.dart';
import '../widgets/method.dart';

class ProductDetiles extends StatelessWidget {
  Products product;
  ProductDetiles({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.latinName),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Picture of product is here
            ProductPicture(product: product),
            // Seconde box for descriptions and active ingredients and etc
            Container(
              width: MediaQuery.of(context).size.width,
              // height: 900,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withAlpha(230),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  // Name of the product
                  Text(
                    product.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Points are here
                  Points(product: product),
                  // Active ingredients are here
                  ActiveIngredients(product: product),
                  // Method is here
                  Method(product: product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
