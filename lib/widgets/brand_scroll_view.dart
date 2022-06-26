import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../screens/product_details.dart';

class BrandScrollView extends StatelessWidget {
  final String brandName, brandImage, brandLatin;
  final List<Products> productList;

  const BrandScrollView({
    Key? key,
    required this.brandName,
    required this.brandLatin,
    required this.brandImage,
    required this.productList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          snap: true,
          floating: true,
          expandedHeight: MediaQuery.of(context).size.height / 1.5,
          flexibleSpace: FlexibleSpaceBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(brandName),
                Text(brandLatin),
              ],
            ),
            centerTitle: true,
            background: Container(
              decoration: BoxDecoration(
                gradient: const RadialGradient(colors: [
                  Colors.white10,
                  Color.fromARGB(255, 120, 151, 171),
                ]),
                // color: Theme.of(context).colorScheme.secondary.withOpacity(.3),
                image: DecorationImage(image: AssetImage(brandImage)),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: productList.isNotEmpty
              ? SliverChildBuilderDelegate(
                  (context, int index) {
                    return Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        child: PhysicalModel(
                          color: Colors.white,
                          elevation: 5,
                          shadowColor: Color(0xff040039).withOpacity(.2),
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ProductDetails(
                                        product: productList[index]);
                                  },
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(3),
                                  alignment: Alignment.center,
                                  height: _width * .15,
                                  width: _width * .15,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withOpacity(.3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    child: productList[index]
                                            .image
                                            .contains('.png')
                                        ? Image.asset(productList[index].image)
                                        : const Icon(
                                            Icons
                                                .photo_size_select_actual_outlined,
                                            size: 30,
                                            color: Colors.black38,
                                          ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(productList[index].name),
                                      const SizedBox(height: 5),
                                      Text(productList[index].latinName),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: productList.length,
                )
              : SliverChildBuilderDelegate(
                  (context, index) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                      child: PhysicalModel(
                        color: Colors.white,
                        elevation: 5,
                        shadowColor: Color(0xff040039).withOpacity(.2),
                        borderRadius: BorderRadius.circular(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(3),
                              alignment: Alignment.center,
                              height: _width * .15,
                              width: _width * .15,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(.3),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.amp_stories,
                                size: 30,
                                color: Colors.black38,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('محصولی برای نمایش موجود نیست'),
                                  const SizedBox(height: 5),
                                  Text(''),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  childCount: 1,
                ),
        ),
      ],
    );
  }
}
