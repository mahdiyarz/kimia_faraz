import 'package:flutter/material.dart';
import '../../../models/product_model.dart';

class Method extends StatelessWidget {
  final Products product;
  const Method({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return product.method!.isNotEmpty
        ? Column(
            children: [
              Text(
                'روش مصــرف',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).canvasColor,
                  fontSize: 19,
                ),
              ),
              Text(
                product.method!,
                textAlign: TextAlign.justify,
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          )
        : const SizedBox();
  }
}
