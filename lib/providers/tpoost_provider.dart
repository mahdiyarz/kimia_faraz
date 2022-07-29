import 'package:flutter/foundation.dart';
import 'package:kimia_faraz/helpers/db_helpers.dart';

import '../models/product_model.dart';
import '../DATA_BASE.dart';

class TPoostProvider with ChangeNotifier {
  List<Products> _favoriteItems = [];

  List<Products> get favoriteItems {
    return [..._favoriteItems];
  }

  Future<void> toggleFavorite(
    int productId,
    String productName,
    String productLatinName,
    String productFullLatin,
    int catId,
    int brandId,
  ) async {
    final db = await DBHelper.getData('favorite_products');

    final myFavorites = Products(
      id: productId,
      name: productName,
      fullLatinName: productFullLatin,
      latinName: productLatinName,
      categoryId: catId,
      brandId: brandId,
      isFav: true,
    );

    final allData = db
        .map((e) => Products(
            id: e['id'],
            name: e['name'],
            fullLatinName: e['fullLatinName'],
            latinName: e['latinName'],
            categoryId: e['catId'],
            brandId: e['brandId'],
            isFav: e['isFav'] == 1 ? true : false))
        .toList();

    if (allData.isEmpty) {
      return DBHelper.insert('favorite_products', {
        'id': myFavorites.id,
        'name': myFavorites.name,
        'latinName': myFavorites.latinName,
        'fullLatinName': myFavorites.fullLatinName,
        'catId': myFavorites.categoryId,
        'brandId': myFavorites.brandId,
        'isFav': myFavorites.isFav == true ? 1 : 0,
      });
    } else {
      final duplicateCheck =
          allData.where((element) => element.id == myFavorites.id);

      if (duplicateCheck.isNotEmpty) {
        _favoriteItems.removeWhere((element) => element.id == myFavorites.id);
        notifyListeners();

        DBHelper.delete('favorite_products', myFavorites.id);
      } else {
        _favoriteItems.add(myFavorites);
        notifyListeners();

        DBHelper.insert('favorite_products', {
          'id': myFavorites.id,
          'name': myFavorites.name,
          'latinName': myFavorites.latinName,
          'fullLatinName': myFavorites.fullLatinName,
          'catId': myFavorites.categoryId,
          'brandId': myFavorites.brandId,
          'isFav': myFavorites.isFav == true ? 1 : 0,
        });
      }
    }
  }

  Future<void> fetchFavoriteData() async {
    final db = await DBHelper.getData('favorite_products');
    _favoriteItems = db
        .map(
          (e) => Products(
            id: e['id'],
            name: e['name'],
            fullLatinName: e['fullLatinName'],
            latinName: e['latinName'],
            categoryId: e['catId'],
            brandId: e['brandId'],
            isFav: e['isFav'] == 1 ? true : false,
          ),
        )
        .toList();

    notifyListeners();
  }

  Products findById(int id) {
    return _favoriteItems.firstWhere((element) => element.id == id);
  }

  bool isProductFavorite(int id) {
    return _favoriteItems.any((element) => element.id == id);
  }

  final List<Brands> _brandItems = brandData;

  List<Brands> get brandItems {
    return [..._brandItems];
  }

  final List<Products> _productItems = productsData;

  List<Products> get productItems {
    return [..._productItems];
  }
}
