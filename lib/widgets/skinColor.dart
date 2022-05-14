import 'package:flutter/material.dart';
import '../models/product-model.dart';

class SkinColor extends StatelessWidget {
  Products product;
  SkinColor({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          right: 20,
        ),
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
    );
  }
}
