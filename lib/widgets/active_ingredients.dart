import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ActiveIngredients extends StatelessWidget {
  final Products product;

  const ActiveIngredients({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return product.activeIngredients!.isNotEmpty
        ? Container(
            margin: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 5,
            ),
            padding: const EdgeInsets.symmetric(
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
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView.separated(
                    itemCount: product.activeIngredients!.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 1),
                    itemBuilder: (context, index) => Stack(
                      children: [
                        InkWell(
                          onTap: product
                                  .activeIngredients![index]['ingredientInfo']!
                                  .isNotEmpty
                              ? () {
                                  return _showModalBottomSheet(
                                      context,
                                      product.activeIngredients![index]
                                          ['ingredientName'] as String,
                                      product.activeIngredients![index]
                                          ['ingredientInfo'] as String);
                                }
                              : () {},
                          child: Center(
                            child: Card(
                              color: Theme.of(context).colorScheme.primary,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 5,
                              child: SizedBox(
                                height: 30,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Center(
                                    child: Text(
                                      product.activeIngredients![index]
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
                        product.activeIngredients![index]['ingredientInfo']!
                                .isNotEmpty
                            ? Icon(
                                Icons.info_rounded,
                                color: Theme.of(context).colorScheme.error,
                                size: 18,
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
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
