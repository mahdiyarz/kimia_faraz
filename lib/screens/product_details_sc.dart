import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/points.dart';
import '../widgets/product_picture.dart';
import '../widgets/active_ingredients.dart';
import '../widgets/method.dart';

class ProductDetailsSc extends StatelessWidget {
  final Products product;
  const ProductDetailsSc({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(product.latinName),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Descriptions are here
                    product.description.isNotEmpty
                        ? Directionality(
                            textDirection: TextDirection.rtl,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(
                                top: 15,
                                left: 5,
                                right: 5,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...product.description
                                      .map((e) => Text(
                                            e,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black54,
                                            ),
                                          ))
                                      .toList()
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(),
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
      ),
      // floatingActionButton: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 3),
      //       child: FloatingActionButton(
      //         onPressed: () {
      //           Navigator.of(context).pop();
      //         },
      //         child: const Icon(
      //           Icons.arrow_back,
      //           color: Colors.white,
      //         ),
      //         elevation: 8,
      //         backgroundColor: Theme.of(context).colorScheme.primary,
      //         mini: true,
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 3),
      //       child: FloatingActionButton(
      //         onPressed: () {
      //           Navigator.of(context).pop();
      //         },
      //         child: const Icon(
      //           Icons.arrow_back,
      //           color: Colors.white,
      //         ),
      //         elevation: 8,
      //         backgroundColor: Theme.of(context).colorScheme.primary,
      //         mini: true,
      //       ),
      //     ),
      //   ],
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
