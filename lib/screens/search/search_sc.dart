import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import 'local_widgets/search_items.dart';
import '../../providers/tpoost_provider.dart';
import '../../models/product_model.dart';
import '../../DATA_BASE.dart';

class SearchSc extends StatefulWidget {
  const SearchSc({Key? key}) : super(key: key);

  @override
  State<SearchSc> createState() => _SearchScState();
}

class _SearchScState extends State<SearchSc> {
  List<Products> products = List.from(productsData);
  List<Brands> brands = List.from(brandData);

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
                element.activeIngredients!
                    .where((element) => element['ingredientName']!
                        .toLowerCase()
                        .contains(value.toLowerCase()))
                    .toString()
                    .toLowerCase()
                    .contains(value) ||
                element.activeIngredients!
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

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async {
        final shouldPop =
            await Provider.of<TPoostProvider>(context, listen: false)
                .showWarning(context);
        return shouldPop ?? false;
      },
      child: SafeArea(
        child: Stack(
          children: [
            products.isEmpty
                ? Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: _width / 3),
                      child: SizedBox(
                        height: _width,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Icon(Icons.warning_rounded,
                                  color: Theme.of(context).colorScheme.error,
                                  size: _width / 2),
                              Text(
                                'محصول مورد نظر یافت نشد!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(.4),
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                ' لطفا دوباره تلاش کنید.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(.4),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
            Container(
              child: _controller.text.isEmpty
                  ? Padding(
                      padding: EdgeInsets.only(top: _width / 10),
                      child: Center(
                        child: Lottie.asset('assets/lottie/search-icon.json'),
                      ),
                    )
                  : SearchItems(products: products, brands: brands),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              width: _width,
              height: _width / 6,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(15),
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
                          fontSize: _width / 23,
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimary
                              .withOpacity(.6),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(15)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) => updateProductList(value),
                    ),
                  ),
                  IconButton(
                    iconSize: _width / 15,
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
          ],
        ),
      ),
    );
  }
}
