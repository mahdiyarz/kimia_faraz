import 'package:flutter/material.dart';
import 'package:kimia_faraz/screens/product_details.dart';

import '../DATA_BASE.dart';

class SearchProducts extends SearchDelegate<String> {
  final products = productsData.map((e) => e.name).toList();
  final recentProducts = [];
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear),
        ),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () {
          close(context, '');
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
      );

  @override
  Widget buildResults(BuildContext context) {
    recentProducts.add(query);
    return ProductDetails(
        product: productsData.firstWhere((element) => element.name == query));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentProducts
        : products.where((element) => element.contains(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(productsData[index].image),
            ),
          ),
        ),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0, query.length),
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        subtitle: Text(productsData[index].fullLatinName),
      ),
      itemCount: suggestionList.length,
    );
  }
}
