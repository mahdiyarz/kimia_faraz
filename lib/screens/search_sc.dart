import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/services.dart';
import 'package:kimia_faraz/screens/product_details_sc.dart';

import '../models/product_model.dart';
import '../DATA_BASE.dart';

class SearchSc extends StatefulWidget {
  const SearchSc({Key? key}) : super(key: key);

  @override
  State<SearchSc> createState() => _SearchScState();
}

class _SearchScState extends State<SearchSc> {
  List<Products> products = List.from(productsData);
  List<Brands> brands = List.from(brandData);
  int? currentIndex;

  void updateProductList(String value) {
    setState(() {
      products = productsData
          .where(
            (element) =>
                element.name.contains(value) ||
                element.latinName.toLowerCase().contains(value.toLowerCase()) ||
                element.fullLatinName
                    .toLowerCase()
                    .contains(value.toLowerCase()) ||
                element.activeIngredients
                    .where((element) => element['ingredientName']!
                        .toLowerCase()
                        .contains(value.toLowerCase()))
                    .toString()
                    .toLowerCase()
                    .contains(value) ||
                element.activeIngredients
                    .where((element) => element['ingredientInfo']!
                        .toLowerCase()
                        .contains(value.toLowerCase()))
                    .toString()
                    .toLowerCase()
                    .contains(value.toLowerCase()),
          )
          .toList();
    });
  }

  void updateBrandList(String value) {
    setState(() {
      brands = brandData
          .where((element) =>
              element.name.contains(value) ||
              element.latinName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    int proLenght = products.length;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            width: _width,
            height: _width / 6,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: _controller,
                    cursorColor: Theme.of(context).colorScheme.onPrimary,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      hintText: 'جستجوی محصولات...',
                      hintStyle: TextStyle(
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(.6),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(15)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) => updateProductList(value),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    updateProductList('');
                    _controller.text = '';
                  },
                  icon: _controller.text.isEmpty
                      ? const Icon(
                          Icons.search,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.clear,
                          color: Colors.white,
                        ),
                )
              ],
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.only(top: 5),
          //   width: _width,
          //   height: _width / 10,
          //   child: ListView.separated(

          //     scrollDirection: Axis.horizontal,
          //     itemCount: brandData.length,
          //     separatorBuilder: (context, index) => const SizedBox(width: 5),
          //     itemBuilder: (context, index) => InkWell(
          //       highlightColor: Colors.transparent,
          //       splashColor: Colors.transparent,
          //       onTap: () {
          //         HapticFeedback.lightImpact();
          //       },
          //       child: ClipRRect(
          //         borderRadius: const BorderRadius.all(Radius.circular(15)),
          //         child: BackdropFilter(
          //           filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
          //           child: Container(
          //             padding: const EdgeInsets.symmetric(horizontal: 15),
          //             decoration: BoxDecoration(
          //               color: Colors.black.withOpacity(.05),
          //             ),
          //             child: Center(child: Text(brandData[index].name)),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),

          //   //! Like tab bar
          //   // ClipRRect(
          //   //   borderRadius: const BorderRadius.all(Radius.circular(50)),
          //   //   child: BackdropFilter(
          //   //     filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
          //   //     child: Container(
          //   //       height: _width * .155,
          //   //       decoration: BoxDecoration(
          //   //         boxShadow: [
          //   //           BoxShadow(
          //   //               color: Colors.black.withOpacity(.15),
          //   //               blurRadius: 30,
          //   //               offset: const Offset(0, 10)),
          //   //         ],
          //   //         borderRadius: BorderRadius.circular(50),
          //   //       ),
          //   //       child: ListView.builder(
          //   //         itemCount: 4,
          //   //         scrollDirection: Axis.horizontal,
          //   //         padding: EdgeInsets.symmetric(horizontal: _width * .024),
          //   //         itemBuilder: (context, index) => InkWell(
          //   //           onTap: () {
          //   //             setState(() {
          //   //               currentIndex = index;
          //   //               HapticFeedback.lightImpact();
          //   //             });
          //   //           },
          //   //           splashColor: Colors.transparent,
          //   //           highlightColor: Colors.transparent,
          //   //           child: Stack(
          //   //             children: [
          //   //               SizedBox(
          //   //                 width: _width * .2125,
          //   //                 child: Center(
          //   //                   child: AnimatedContainer(
          //   //                     duration: const Duration(seconds: 1),
          //   //                     curve: Curves.fastLinearToSlowEaseIn,
          //   //                     height:
          //   //                         index == currentIndex ? _width * .12 : 0,
          //   //                     width:
          //   //                         index == currentIndex ? _width * .2125 : 0,
          //   //                     decoration: BoxDecoration(
          //   //                       color: index == currentIndex
          //   //                           ? Theme.of(context).colorScheme.primary
          //   //                           : Colors.transparent,
          //   //                       borderRadius: BorderRadius.circular(50),
          //   //                     ),
          //   //                   ),
          //   //                 ),
          //   //               ),
          //   //               Container(
          //   //                 width: _width * .2125,
          //   //                 alignment: Alignment.center,
          //   //                 child: Icon(
          //   //                   Icons.abc,
          //   //                   size: _width * .076,
          //   //                   color: index == currentIndex
          //   //                       ? Theme.of(context).colorScheme.onPrimary
          //   //                       : Colors.black26,
          //   //                 ),
          //   //               ),
          //   //             ],
          //   //           ),
          //   //         ),
          //   //       ),
          //   //     ),
          //   //   ),
          //   // ),
          //   //! listView
          //   //  ListView.separated(
          //   //   scrollDirection: Axis.horizontal,
          //   //   itemCount: brandData.length,
          //   //   separatorBuilder: (context, index) => const SizedBox(width: 1),
          //   //   itemBuilder: (context, index) => InkWell(
          //   //     onTap: () {},
          //   //     child: Card(
          //   //       color: Theme.of(context).colorScheme.primary,
          //   //       shape: RoundedRectangleBorder(
          //   //           borderRadius: BorderRadius.circular(10)),
          //   //       child: Padding(
          //   //         padding: const EdgeInsets.all(5.0),
          //   //         child: Center(
          //   //           child: FittedBox(
          //   //             child: Text(
          //   //               brandData[index].name,
          //   //               textDirection: TextDirection.rtl,
          //   //               textAlign: TextAlign.center,
          //   //               style: TextStyle(
          //   //                 fontWeight: FontWeight.bold,
          //   //                 color: Theme.of(context).canvasColor,
          //   //               ),
          //   //             ),
          //   //           ),
          //   //         ),
          //   //       ),
          //   //     ),
          //   //   ),
          //   // ),
          // ),
          // products.isNotEmpty && _controller.text.isNotEmpty
          //     ? Container(
          //         margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
          //         alignment: Alignment.center,
          //         width: _width,
          //         height: 40,
          //         decoration: BoxDecoration(
          //           color: Theme.of(context).colorScheme.error.withOpacity(.4),
          //           borderRadius: BorderRadius.circular(15),
          //         ),
          //         child: Text(
          //           'از جستجوی شما $proLenght محصول پیدا شد.',
          //           textAlign: TextAlign.center,
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             color: Colors.white.withOpacity(.8),
          //             fontSize: 16,
          //           ),
          //         ),
          //       )
          //     :
          products.isEmpty
              ? Column(
                  children: [
                    Lottie.asset('assets/lottie/search-not-found.json'),
                    Text(
                      'محصول مورد نظر یافت نشد!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(.2),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      ' لطفا دوباره تلاش کنید.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(.2),
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              // Container(
              //     margin: const EdgeInsets.symmetric(
              //       horizontal: 10,
              //       vertical: 5,
              //     ),
              //     padding: const EdgeInsets.symmetric(vertical: 15),
              //     alignment: Alignment.center,
              //     width: _width,
              //     decoration: BoxDecoration(
              //       color: Theme.of(context).colorScheme.error,
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.stretch,
              //       children: [
              //         Icon(
              //           Icons.search_off,
              //           color: Colors.white.withOpacity(.8),
              //           size: 30,
              //         ),
              //         Text(
              //           'محصول مورد نظر یافت نشد!',
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             color: Colors.white.withOpacity(.8),
              //             fontSize: 16,
              //           ),
              //         ),
              //         Text(
              //           ' لطفا دوباره تلاش کنید.',
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             color: Colors.white.withOpacity(.8),
              //             fontSize: 16,
              //           ),
              //         ),
              //       ],
              //     ),
              //   )
              : const SizedBox(),
          Expanded(
            child: _controller.text.isEmpty
                ? Center(
                    child: Lottie.asset('assets/lottie/search-icon.json'),
                  )
                : ListView.builder(
                    padding: EdgeInsets.only(bottom: _width / 5),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final productBrand = brands.firstWhere(
                          (element) => element.id == products[index].brandId);
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
                                      builder: ((context) => ProductDetailsSc(
                                          product: products[index]))));
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            products[index].name,
                                            style:
                                                const TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        FittedBox(
                                          child: Text(
                                            products[index].fullLatinName,
                                            style: const TextStyle(
                                                color: Colors.black45),
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
                  ),
          ),
        ],
      ),
    );
  }
}
