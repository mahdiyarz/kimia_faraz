import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favorite_provider.dart';
import '../models/product_model.dart';
import '../screens/tab_bar_sc.dart';
import 'skin_type.dart';
import 'skin_color.dart';

class ProductPicture extends StatefulWidget {
  final Products product;
  const ProductPicture({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductPicture> createState() => _ProductPictureState();
}

class _ProductPictureState extends State<ProductPicture> {
  @override
  Widget build(BuildContext context) {
    final _toggleFav = Provider.of<FavoriteProvider>(context)
        .isProductFavorite(widget.product.id);

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
          child: widget.product.image!.contains('.png')
              ? Image.asset(widget.product.image!)
              : Center(
                  child: Icon(
                    Icons.add_photo_alternate_outlined,
                    color: Theme.of(context).canvasColor,
                    size: 100,
                  ),
                ),
        ),
        widget.product.skinType!.isNotEmpty
            ? SkinType(product: widget.product)
            : const SizedBox(),
        widget.product.color!.isNotEmpty
            ? SkinColor(product: widget.product)
            : const SizedBox(),
        Positioned(
            top: 5,
            left: 15,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 5),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Directionality(
                                textDirection: TextDirection.rtl,
                                child: TabBarSc())),
                      );
                    },
                    icon: const Icon(Icons.home, color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 5),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _toggleFav != _toggleFav;
                      });
                      Provider.of<FavoriteProvider>(context, listen: false)
                          .toggleFavorite(
                        widget.product.id,
                        widget.product.name,
                        widget.product.latinName,
                        widget.product.fullLatinName,
                        widget.product.categoryId,
                        widget.product.brandId,
                      );
                    },
                    icon: _toggleFav == false
                        ? const Icon(Icons.favorite_border, color: Colors.white)
                        : const Icon(Icons.favorite, color: Colors.red),
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
                widget.product.fullLatinName,
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
