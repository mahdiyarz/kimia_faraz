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

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).colorScheme.primary,
                hintText: 'جستجوی محصولات...',
                hintStyle: TextStyle(
                  color:
                      Theme.of(context).colorScheme.onPrimary.withOpacity(.6),
                ),
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) => updateList(value),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: products.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'محصول مورد نظر یافت نشد!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          ' لطفا دوباره تلاش کنید.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  : ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {},
                          title: Text(products[index].name),
                          subtitle: Text(products[index].fullLatinName),
                          trailing: Container(
                            alignment: Alignment.center,
                            height: _width * .15,
                            width: _width * .15,
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withOpacity(.3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: products[index].id >= 0101 &&
                                    products[index].id <= 0199
                                ? const Text('درمالیفت')
                                : products[index].id >= 0201 &&
                                        products[index].id <= 0299
                                    ? const Text('استم سل')
                                    : products[index].id >= 0301 &&
                                            products[index].id <= 0399
                                        ? const Text('میلیتو')
                                        : products[index].id >= 0401 &&
                                                products[index].id <= 0499
                                            ? const Text('راکوتن')
                                            : products[index].id >= 0501 &&
                                                    products[index].id <= 0599
                                                ? const Text('لاکوئینتا')
                                                : products[index].id >= 0601 &&
                                                        products[index].id <=
                                                            0699
                                                    ? const Text('توتال درم')
                                                    : products[index].id >= 0701 &&
                                                            products[index].id <=
                                                                0799
                                                        ? const Text('دلانو')
                                                        : products[index].id >=
                                                                    0801 &&
                                                                products[index]
                                                                        .id <=
                                                                    0899
                                                            ? const Text(
                                                                'بایوریچ')
                                                            : products[index].id >=
                                                                        0901 &&
                                                                    products[index]
                                                                            .id <=
                                                                        0999
                                                                ? const Text(
                                                                    'پلزنت')
                                                                : products[index].id >=
                                                                            1001 &&
                                                                        products[index].id <=
                                                                            1099
                                                                    ? const Text(
                                                                        'ادلیو')
                                                                    : products[index].id >= 1101 &&
                                                                            products[index].id <= 1199
                                                                        ? const Text('فارمالاین')
                                                                        : products[index].id >= 1201 && products[index].id <= 1299
                                                                            ? const Text('جوجو')
                                                                            : products[index].id >= 1301 && products[index].id <= 1399
                                                                                ? const Text('رینکن')
                                                                                : products[index].id >= 1401 && products[index].id <= 1499
                                                                                    ? const Text('بتیس')
                                                                                    : const Text('بدون نام برند'),
                          ),
                        );
                      },
                    ),
            ),
            const SizedBox(height: 60)
          ],
        ),
      ),
    );
  }
}
