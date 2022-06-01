import 'package:flutter/material.dart';
import '../models/product_model.dart';
import 'skin_type.dart';
import 'skin_color.dart';

class ProductPicture extends StatelessWidget {
  final Products product;
  const ProductPicture({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.33,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: product.image.contains('.png')
              ? Image.asset(product.image)
              : Center(
                  child: Icon(
                    Icons.add_photo_alternate_outlined,
                    color: Theme.of(context).canvasColor,
                    size: 100,
                  ),
                ),
        ),
        product.skinType.isNotEmpty
            ? SkinType(product: product)
            : const SizedBox(),
        product.color.isNotEmpty
            ? SkinColor(product: product)
            : const SizedBox(),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: FittedBox(
              fit: BoxFit.fill,
              child: Text(
                product.fullLatinName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).canvasColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}