import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../screens/tab_bar_sc.dart';
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
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary.withOpacity(.4),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: product.image!.contains('.png')
              ? Image.asset(product.image!)
              : Center(
                  child: Icon(
                    Icons.add_photo_alternate_outlined,
                    color: Theme.of(context).canvasColor,
                    size: 100,
                  ),
                ),
        ),
        product.skinType!.isNotEmpty
            ? SkinType(product: product)
            : const SizedBox(),
        product.color!.isNotEmpty
            ? SkinColor(product: product)
            : const SizedBox(),
        Positioned(
            top: 5,
            left: 15,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Directionality(
                              textDirection: TextDirection.rtl,
                              child: TabBarSc())),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )),
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
