import 'package:flutter/material.dart';
import 'package:kimia_faraz/models/favorite_model.dart';
import 'package:provider/provider.dart';

import '../../../providers/tpoost_provider.dart';
import '../../../models/product_model.dart';
import '../../product_details/product_details_sc.dart';

class FavoriteItems extends StatelessWidget {
  final List<FavoriteProducts> products;
  final List<Brands> brands;
  const FavoriteItems({
    Key? key,
    required this.products,
    required this.brands,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: EdgeInsets.only(bottom: _width / 5, top: _width / 5),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final _product = Provider.of<TPoostProvider>(context)
              .findById(products[index].productId);
          final productBrand = brands.firstWhere(
              (element) => element.id == products[index].productBrandId);
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
                          return ProductDetailsSc(product: _product);
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
                          child: _product.image!.contains('.png')
                              ? Image.asset(products[index].productImage!)
                              : const Icon(
                                  Icons.photo_size_select_actual_outlined,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                  products[index].productName,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      products[index].productLatinName,
                                      style: const TextStyle(
                                          color: Colors.black45),
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 20,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: FittedBox(
                                      child: Text(
                                        productBrand.name,
                                        style: const TextStyle(
                                            color: Colors.white),
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
      ),
    );
  }
}
