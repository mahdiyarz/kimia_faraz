import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/product_model.dart';
import '../../../providers/tpoost_provider.dart';

class FavoriteButton extends StatefulWidget {
  bool isPressed;
  final Products product;
  FavoriteButton({
    Key? key,
    required this.isPressed,
    required this.product,
  }) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isHighlighted = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onHighlightChanged: (value) {
          setState(() {
            isHighlighted = !isHighlighted;
          });
        },
        onTap: () {
          setState(() {
            widget.isPressed = !widget.isPressed;
          });
          Provider.of<TPoostProvider>(context, listen: false).toggleFavorite(
            widget.product.id,
            widget.product.name,
            widget.product.latinName,
            widget.product.brandId,
            widget.product.image,
          );
        },
        child: AnimatedContainer(
          margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
          height: isHighlighted ? 40 : 30,
          width: isHighlighted ? 40 : 30,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 20,
                offset: const Offset(5, 10),
              ),
            ],
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
          ),
          child: widget.isPressed == false
              ? Icon(
                  Icons.favorite_border,
                  color: Colors.white.withOpacity(0.6),
                )
              : Icon(
                  Icons.favorite,
                  color: Colors.pink.withOpacity(1.0),
                ),
        ),
      ),
    );
  }
}
