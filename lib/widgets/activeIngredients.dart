import 'package:flutter/material.dart';
import '../models/product-model.dart';

class ActiveIngredients extends StatelessWidget {
  Products product;

  ActiveIngredients({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return product.activeIngredients.isNotEmpty
        ? Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 3,
            ),
            height: 85,
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Text(
                  'ترکیبــات فعــال',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView.separated(
                    itemCount: product.activeIngredients.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 1),
                    itemBuilder: (context, index) => Stack(
                      children: [
                        InkWell(
                          onTap: product
                                  .activeIngredients[index]['ingredientInfo']!
                                  .isNotEmpty
                              ? () {
                                  return _showModalBottomSheet(
                                      context,
                                      product.activeIngredients[index]
                                          ['ingredientName'] as String,
                                      product.activeIngredients[index]
                                          ['ingredientInfo'] as String);
                                }
                              : () {},
                          child: Center(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 5,
                              child: SizedBox(
                                height: 30,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Center(
                                    child: Text(
                                      product.activeIngredients[index]
                                          ['ingredientName'] as String,
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).canvasColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        product.activeIngredients[index]['ingredientInfo']!
                                .isNotEmpty
                            ? Icon(
                                Icons.info_rounded,
                                color: Theme.of(context).colorScheme.primary,
                                size: 15,
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        : const SizedBox();
  }

  void _showModalBottomSheet(
      BuildContext ctx, String ingredientName, String ingredientInfo) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return Container(
            color: Theme.of(ctx).colorScheme.primary,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      ingredientName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(ctx).colorScheme.primaryContainer,
                      ),
                    ),
                  ),
                  Text(
                    ingredientInfo,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.5,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
