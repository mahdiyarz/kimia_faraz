import 'package:flutter/material.dart';

import '../DATA_BASE.dart';

class BrandBoardcast extends StatelessWidget {
  int index;

  BrandBoardcast({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 8,
      left: 8,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            Text(
              brandData[index].name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            Text(
              brandData[index].latinName.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white54,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.swipe_up, color: Colors.black54),
                  Text(
                    'برای مشاهده کلیه محصولات بکشید به سمت بالا',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
