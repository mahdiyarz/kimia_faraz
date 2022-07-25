import 'package:flutter/foundation.dart';
import 'package:kimia_faraz/helpers/db_helpers.dart';

import '../models/product_model.dart';
import '../DATA_BASE.dart';

class TPoostProvider with ChangeNotifier {
  List<Products> _items = [];

  List<Products> get items {
    return [..._items];
  }

  Future<void> addFavorite(
      int productId,
      String productName,
      String productLatinName,
      String productFullLatin,
      int catId,
      int brandId,
      bool isFavorite) async {
    final db = await DBHelper.getData('favorite_products');
    _items = db
        .map((e) => Products(
            id: e['id'],
            name: e['name'],
            fullLatinName: e['fullLatinName'],
            latinName: e['latinName'],
            categoryId: e['catId'],
            brandId: e['brandId'],
            isFav: e['isFav']))
        .toList();

    final myFavorites = Products(
      id: productId,
      name: productName,
      fullLatinName: productFullLatin,
      latinName: productLatinName,
      categoryId: catId,
      brandId: brandId,
      isFav: isFavorite,
    );

    final duplicateCheck =
        _items.where((element) => element.id == myFavorites.id);

    if (duplicateCheck.isNotEmpty) {
      _items.add(myFavorites);
      notifyListeners();

      DBHelper.insert('favorite_products', {
        'id': myFavorites.id,
        'name': myFavorites.name,
        'latinName': myFavorites.latinName,
        'fullLatinName': myFavorites.fullLatinName,
        'catId': myFavorites.categoryId,
        'brandId': myFavorites.brandId,
        'isFav': myFavorites.isFav as bool,
      });
    } else {
      return;
    }
  }

  Future<void> fetchData() async {
    final db = await DBHelper.getData('favorite_products');
    _items = db
        .map((e) => Products(
            id: e['id'],
            name: e['name'],
            fullLatinName: e['fullLatinName'],
            latinName: e['latinName'],
            categoryId: e['catId'],
            brandId: e['brandId'],
            isFav: e['isFav']))
        .toList();
    notifyListeners();
  }
}
