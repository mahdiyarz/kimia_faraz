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
    return Stack(
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
            ? Positioned(
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
              )
            : const SizedBox(),
        product.color.isNotEmpty
            ? Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    right: 20,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...product.color
                            .map((e) => Row(
                                  children: [
                                    Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: e.contains('روشن')
                                            ? Colors.indigo
                                            : e.contains('متوسط')
                                                ? Colors.green
                                                : Colors.white10,
                                        border: Border.all(
                                          color: Colors.black26,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      e,
                                      style: TextStyle(
                                        color: Theme.of(context).canvasColor,
                                        fontSize: 12,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ))
                            .toList(),
                      ],
                    ),
                  ),
                ),
              )
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
