import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../screens/product_details/product_details_sc.dart';
import '../DATA_BASE.dart';

class ItemsScrollView extends StatelessWidget {
  final String itemName, itemImage, itemLatinName;
  final List<Products> productsList;
  final bool showBrands;

  const ItemsScrollView({
    Key? key,
    required this.itemName,
    required this.itemLatinName,
    required this.itemImage,
    required this.productsList,
    required this.showBrands,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Brands> brandsList = brandData;
    final _width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(.8),
          pinned: true,
          snap: true,
          floating: true,
          expandedHeight: _width / 1.5,
          flexibleSpace: FlexibleSpaceBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  itemName,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    shadows: [
                      Shadow(
                        color: Colors.black26,
                        offset: Offset(0, 1),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
                Text(
                  itemLatinName,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    shadows: [
                      Shadow(
                        color: Colors.black26,
                        offset: Offset(0, 1),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            centerTitle: true,
            background: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.white10,
                  const Color.fromARGB(255, 120, 151, 171).withOpacity(.7),
                ], begin: Alignment.bottomRight),
                image: DecorationImage(image: AssetImage(itemImage)),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: productsList.isNotEmpty
              ? SliverChildBuilderDelegate(
                  (context, int index) {
                    final productBrand = brandsList.firstWhere(
                        (element) => element.id == productsList[index].brandId);
                    return Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        child: PhysicalModel(
                          color: Colors.white,
                          elevation: 5,
                          shadowColor: const Color(0xff040039).withOpacity(.2),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(20),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ProductDetailsSc(
                                        product: productsList[index]);
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
                                    child: productsList[index]
                                            .image!
                                            .contains('.png')
                                        ? Image.asset(
                                            productsList[index].image!)
                                        : const Icon(
                                            Icons
                                                .photo_size_select_actual_outlined,
                                            size: 30,
                                            color: Colors.black38,
                                          ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            productsList[index].name,
                                            style:
                                                const TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            FittedBox(
                                              child: Text(
                                                productsList[index].latinName,
                                                style: const TextStyle(
                                                    color: Colors.black45),
                                              ),
                                            ),
                                            showBrands == false
                                                ? const SizedBox()
                                                : Container(
                                                    width: 50,
                                                    height: 20,
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 5),
                                                    decoration: BoxDecoration(
                                                      color: Colors.black12,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: FittedBox(
                                                      child: Text(
                                                        productBrand.name,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: productsList.length,
                )
              : SliverChildBuilderDelegate(
                  (context, index) => Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                      child: PhysicalModel(
                        color: Colors.white,
                        elevation: 5,
                        shadowColor: const Color(0xff040039).withOpacity(.2),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(20),
                        ),
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
                            const Expanded(
                              child: Text(
                                'محصولی برای نمایش موجود نیست',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black38),
                                textAlign: TextAlign.center,
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
