import 'package:flutter/material.dart';

import '../widgets/show_cart.dart';

class CartsGroups extends StatelessWidget {
  String? imageUrlFirstCard;
  String? titleFirstCard;
  Widget? routeFirstCard;

  String? imageUrlSecondCard;
  String? titleSecondCard;
  Widget? routeSecondCard;

  String? imageUrlThirdCard;
  String? titleThirdCard;
  Widget? routeThirdCard;

  CartsGroups({
    Key? key,
    required this.imageUrlFirstCard,
    required this.titleFirstCard,
    required this.routeFirstCard,
    required this.imageUrlSecondCard,
    required this.titleSecondCard,
    required this.routeSecondCard,
    required this.imageUrlThirdCard,
    required this.titleThirdCard,
    required this.routeThirdCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: _width / 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ShowCart(
            image: imageUrlFirstCard!,
            title: titleFirstCard!,
            route: routeFirstCard!,
          ),
          imageUrlSecondCard!.isNotEmpty
              ? ShowCart(
                  image: imageUrlSecondCard!,
                  title: titleSecondCard!,
                  route: routeSecondCard!,
                )
              : SizedBox(
                  height: _width / 2.5,
                  width: _width / 3.3,
                ),
          imageUrlThirdCard!.isNotEmpty
              ? ShowCart(
                  image: imageUrlThirdCard!,
                  title: titleThirdCard!,
                  route: routeThirdCard!,
                )
              : SizedBox(
                  height: _width / 2.5,
                  width: _width / 3.3,
                ),
        ],
      ),
    );
  }
}
