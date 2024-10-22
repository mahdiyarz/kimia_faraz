import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/tpoost_provider.dart';
import '../../../models/product_model.dart';
import 'fav_button.dart';
import 'home_button.dart';
import 'back_button.dart';
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
    final _toggleFav = Provider.of<TPoostProvider>(context)
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
        widget.product.skinType == null
            ? const SizedBox()
            : SkinType(product: widget.product),
        widget.product.color == null
            ? const SizedBox()
            : SkinColor(product: widget.product),
        Positioned(
            top: 5,
            left: 15,
            child: Column(
              children: [
                const CustomBackButton(),
                const HomeButton(),
                FavoriteButton(
                  isPressed: _toggleFav,
                  product: widget.product,
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
