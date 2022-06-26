import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../DATA_BASE.dart';

class ShowSearch extends StatefulWidget {
  const ShowSearch({Key? key}) : super(key: key);

  @override
  State<ShowSearch> createState() => _ShowSearchState();
}

class _ShowSearchState extends State<ShowSearch> {
  List<Products> products = List.from(productsData);

  void updateList(String value) {
    setState(() {
      products = productsData
          .where((element) =>
              element.name.contains(value) ||
              element.latinName.toLowerCase().contains(value.toLowerCase()) ||
              element.fullLatinName.toLowerCase().contains(value.toLowerCase()))
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
                      filled: true,
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
                    onChanged: (value) => updateList(value),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      updateList('');
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
                          ))
              ],
            ),
          ),
          products.isNotEmpty && _controller.text.isNotEmpty
              ? Container(
                  margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                  alignment: Alignment.center,
                  width: _width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.error.withOpacity(.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'از جستجوی شما $proLenght محصول پیدا شد.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(.8),
                      fontSize: 16,
                    ),
                  ),
                )
              : products.isEmpty
                  ? Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      alignment: Alignment.center,
                      width: _width,
                      decoration: BoxDecoration(
                        color:
                            Theme.of(context).colorScheme.error.withOpacity(.4),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Icon(
                            Icons.search_off,
                            color: Colors.white.withOpacity(.8),
                            size: 30,
                          ),
                          Text(
                            'محصول مورد نظر یافت نشد!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(.8),
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            ' لطفا دوباره تلاش کنید.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(.8),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: _width / 5),
              itemCount: products.length,
              itemBuilder: (context, index) {
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
                            child: products[index].id >= 0101 &&
                                    products[index].id <= 0199
                                ? const Text(
                                    'درمالیفت',
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  )
                                : products[index].id >= 0201 &&
                                        products[index].id <= 0299
                                    ? const Text(
                                        'استم سل',
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      )
                                    : products[index].id >= 0301 &&
                                            products[index].id <= 0399
                                        ? const Text(
                                            'میلیتو',
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),
                                          )
                                        : products[index].id >= 0401 &&
                                                products[index].id <= 0499
                                            ? const Text(
                                                'راکوتن',
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                ),
                                              )
                                            : products[index].id >= 0501 &&
                                                    products[index].id <= 0599
                                                ? const Text(
                                                    'لاکوئینتا',
                                                    style: TextStyle(
                                                      color: Colors.black54,
                                                    ),
                                                  )
                                                : products[index].id >= 0601 &&
                                                        products[index].id <=
                                                            0699
                                                    ? const Text(
                                                        'توتال درم',
                                                        style: TextStyle(
                                                          color: Colors.black54,
                                                        ),
                                                      )
                                                    : products[index].id >= 0701 &&
                                                            products[index].id <=
                                                                0799
                                                        ? const Text(
                                                            'دلانو',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .black54,
                                                            ),
                                                          )
                                                        : products[index].id >=
                                                                    0801 &&
                                                                products[index]
                                                                        .id <=
                                                                    0899
                                                            ? const Text(
                                                                'بایوریچ',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black54,
                                                                ),
                                                              )
                                                            : products[index].id >=
                                                                        0901 &&
                                                                    products[index]
                                                                            .id <=
                                                                        0999
                                                                ? const Text(
                                                                    'پلزنت',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black54,
                                                                    ),
                                                                  )
                                                                : products[index].id >=
                                                                            1001 &&
                                                                        products[index].id <=
                                                                            1099
                                                                    ? const Text(
                                                                        'ادلیو',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.black54,
                                                                        ),
                                                                      )
                                                                    : products[index].id >= 1101 &&
                                                                            products[index].id <= 1199
                                                                        ? const Text(
                                                                            'فارمالاین',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.black54,
                                                                            ),
                                                                          )
                                                                        : products[index].id >= 1201 && products[index].id <= 1299
                                                                            ? const Text(
                                                                                'جوجو',
                                                                                style: TextStyle(
                                                                                  color: Colors.black54,
                                                                                ),
                                                                              )
                                                                            : products[index].id >= 1301 && products[index].id <= 1399
                                                                                ? const Text(
                                                                                    'رینکن',
                                                                                    style: TextStyle(
                                                                                      color: Colors.black54,
                                                                                    ),
                                                                                  )
                                                                                : products[index].id >= 1401 && products[index].id <= 1499
                                                                                    ? const Text(
                                                                                        'بتیس',
                                                                                        style: TextStyle(
                                                                                          color: Colors.black54,
                                                                                        ),
                                                                                      )
                                                                                    : const Text(
                                                                                        'بدون نام برند',
                                                                                        style: TextStyle(
                                                                                          color: Colors.black54,
                                                                                        ),
                                                                                      ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(products[index].name),
                                const SizedBox(height: 5),
                                Text(products[index].fullLatinName),
                              ],
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
