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
                color: Theme.of(context).colorScheme.secondary,
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
                      child: ListTile(
                        title: Text(productList[index].name,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary,
                            )),
                        subtitle: Text(productList[index].latinName,
                            style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimary
                                  .withAlpha(80),
                            )),
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: productList[index].image.contains('.png')
                              ? Image.asset(productList[index].image)
                              : const Icon(
                                  Icons.photo_size_select_actual_outlined,
                                  size: 30),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ProductDetails(
                                  product: productList[index],
                                );
                              },
                            ),
                          );
                        },
                      ),
                    );
                  },
                  childCount: productList.length,
                )
              : SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: const Text('کالایی برای نمایش موجود نیست.'),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(Icons.amp_stories),
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
