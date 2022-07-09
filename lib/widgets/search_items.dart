import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../screens/product_details_sc.dart';

class SearchItems extends StatelessWidget {
  final List<Products> products;
  final List<Brands> brands;
  const SearchItems({
    required this.products,
    required this.brands,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return ListView.builder(
      padding: EdgeInsets.only(bottom: _width / 5, top: _width / 5),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final productBrand = brands
            .firstWhere((element) => element.id == products[index].brandId);
        return Container(
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
                        builder: ((context) =>
                            ProductDetailsSc(product: products[index]))));
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
                    child: Text(
                      productBrand.name,
                      style: const TextStyle(
                        color: Colors.black54,
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
                              products[index].name,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          const SizedBox(height: 5),
                          FittedBox(
                            child: Text(
                              products[index].fullLatinName,
                              style: const TextStyle(color: Colors.black45),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
