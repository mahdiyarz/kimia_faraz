import 'package:flutter/material.dart';

import '../DATA_BASE.dart';

class ShowBrandImage extends StatelessWidget {
  int index;
  ShowBrandImage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.only(top: 100),
      height: MediaQuery.of(context).size.height,
      child: Image.asset(brandData[index].image),
    );
  }
}
