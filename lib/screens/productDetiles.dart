import 'package:flutter/material.dart';
import '../models/product-model.dart';

class ProductDetiles extends StatelessWidget {
  Products products;
  ProductDetiles({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(products.latinName),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Picture of product is here
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.33,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: products.image.contains('.png')
                  ? Image.asset(products.image)
                  : Center(
                      child: Icon(
                        Icons.add_photo_alternate_outlined,
                        color: Theme.of(context).canvasColor,
                        size: 100,
                      ),
                    ),
            ),
            // Seconde box for descriptions and active ingredients and etc
            Container(
              width: MediaQuery.of(context).size.width,
              height: 900,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withAlpha(230),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  // Name of the product
                  Text(
                    products.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // descriptions are here
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.discription.length,
                    itemBuilder: (context, index) => Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Theme.of(context).canvasColor,
                              ),
                            ),
                            Flexible(
                              child: Text(
                                products.discription[index],
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Active ingredients are here
                  products.activeIngredients.isNotEmpty
                      ? Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 3,
                          ),
                          height: 85,
                          decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'ترکیبــات فعــال',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                child: ListView.separated(
                                  itemCount: products.activeIngredients.length,
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(width: 1),
                                  itemBuilder: (context, index) => Center(
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      elevation: 5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          products.activeIngredients[index],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Theme.of(context).canvasColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : const SizedBox(),
                  // Method is here
                  products.method.isNotEmpty
                      ? Column(
                          children: [
                            Text(
                              'روش مصــرف',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).canvasColor,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              products.method,
                              textAlign: TextAlign.justify,
                              textDirection: TextDirection.rtl,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
