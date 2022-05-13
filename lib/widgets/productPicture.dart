import 'package:flutter/material.dart';
import '../models/product-model.dart';

class ProductPicture extends StatelessWidget {
  Products product;
  ProductPicture({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
