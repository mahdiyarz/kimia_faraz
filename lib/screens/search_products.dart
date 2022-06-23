import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../screens/product_details.dart';

import '../DATA_BASE.dart';

class SearchProducts extends SearchDelegate<String> {
  final List<String> productsList = List.from(productsData.map((e) => e.name));

  final recentProducts = [
    'کرم',
    'تست',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            query = '';
            showSuggestions(context);
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
    return Container(
        width: 100,
        height: 100,
        child: Card(
          color: Colors.blue,
          child: Text(query),
        ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentProducts
        : productsList.where((e) {
            final productLower = e.toLowerCase();
            final queryLower = query.toLowerCase();
            return productLower.contains(queryLower);
          }).toList();

    return buildSuggestionsSuccess(suggestionList);
  }

  Widget buildSuggestionsSuccess(List<String> suggestionList) =>
      ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          final suggestion = suggestionList[index];
          final queryText = suggestion.substring(0, query.length);
          final remainingText = suggestion.substring(query.length);

          return Directionality(
            textDirection: TextDirection.rtl,
            child: ListTile(
              onTap: () {
                query = suggestion;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ProductDetails(product: productsData[index]),
                  ),
                );
                // close(context, suggestion);
                // showResults(context);
              },
              leading: Icon(Icons.access_alarm),
              // title: Text(suggestion),
              title: RichText(
                text: TextSpan(
                  text: queryText,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: remainingText,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
