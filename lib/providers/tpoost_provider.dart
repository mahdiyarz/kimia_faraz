import 'package:flutter/material.dart';
import '../helpers/db_helpers.dart';
import '../models/favorite_model.dart';

import '../models/product_model.dart';
import '../DATA_BASE.dart';

class TPoostProvider with ChangeNotifier {
  //* Favorite Providers
  List<FavoriteProducts> _favoriteItems = [];

  List<FavoriteProducts> get favoriteItems {
    return [..._favoriteItems];
  }

  Future<void> toggleFavorite(
    int productId,
    String productName,
    String productLatinName,
    int productBrandId,
    String? productImage,
  ) async {
    final db = await DBHelper.instance.getFavoriteProductData();

    final myFavorite = FavoriteProducts(
      productId: productId,
      productName: productName,
      productLatinName: productLatinName,
      productBrandId: productBrandId,
      productImage: productImage,
    );

    final getAllData = db.map((e) => e.productId).toList();

    if (getAllData.isEmpty) {
      DBHelper.instance.insertFavoriteProducts(myFavorite);
    } else {
      final duplicateCheck =
          getAllData.where((element) => element == myFavorite.productId);

      if (duplicateCheck.isNotEmpty) {
        _favoriteItems.removeWhere(
            (element) => element.productId == myFavorite.productId);
        DBHelper.instance.deleteFavoriteProduct(myFavorite);
        notifyListeners();
      } else {
        _favoriteItems.add(myFavorite);
        notifyListeners();

        DBHelper.instance.insertFavoriteProducts(myFavorite);
      }
    }
  }

  Future<void> fetchFavoriteData() async {
    final db = await DBHelper.instance.getFavoriteProductData();
    _favoriteItems = db;

    notifyListeners();
  }

  Products findById(int id) {
    return productItems.firstWhere((element) => element.id == id);
  }

  bool isProductFavorite(int id) {
    return _favoriteItems.any((element) => element.productId == id);
  }

  //* Brands Providers
  final List<Brands> _brandItems = brandData;

  List<Brands> get brandItems {
    return [..._brandItems];
  }

  //* Products Providers
  final List<Products> _productItems = productsData;

  List<Products> get productItems {
    return [..._productItems];
  }

//* Alert for exit from app
  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            title: const Text(
              'آیا می خواهید از برنامه خارج شوید؟',
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  primary: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () => Navigator.pop(context, false),
                child: const Text('نه هنوز'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () => Navigator.pop(context, true),
                child: const Text('بله'),
              ),
            ],
          ),
        ),
      );
}


// class TPoostProvider with ChangeNotifier {
//   //* Favorite Providers
//   List<Products> _favoriteItems = [];

//   List<Products> get favoriteItems {
//     return [..._favoriteItems];
//   }

//   Future<void> toggleFavorite(
//     int productId,
//     String productName,
//     String productLatinName,
//     String productFullLatin,
//     String image,
//     int catId,
//     int brandId,
//   ) async {
//     final db = await DBHelper.getData('favorite_products');

//     final myFavorites = Products(
//       id: productId,
//       name: productName,
//       fullLatinName: productFullLatin,
//       latinName: productLatinName,
//       image: image,
//       categoryId: catId,
//       brandId: brandId,
//       isFav: true,
//     );

//     final allData = db
//         .map((e) => Products(
//             id: e['id'],
//             name: e['name'],
//             fullLatinName: e['fullLatinName'],
//             latinName: e['latinName'],
//             image: e['image'],
//             categoryId: e['catId'],
//             brandId: e['brandId'],
//             isFav: e['isFav'] == 1 ? true : false))
//         .toList();

//     if (allData.isEmpty) {
//       return DBHelper.insert('favorite_products', {
//         'id': myFavorites.id,
//         'name': myFavorites.name,
//         'latinName': myFavorites.latinName,
//         'fullLatinName': myFavorites.fullLatinName,
//         'image': myFavorites.image as String,
//         'catId': myFavorites.categoryId,
//         'brandId': myFavorites.brandId,
//         'isFav': myFavorites.isFav == true ? 1 : 0,
//       });
//     } else {
//       final duplicateCheck =
//           allData.where((element) => element.id == myFavorites.id);

//       if (duplicateCheck.isNotEmpty) {
//         _favoriteItems.removeWhere((element) => element.id == myFavorites.id);
//         notifyListeners();

//         DBHelper.delete('favorite_products', myFavorites.id);
//       } else {
//         _favoriteItems.add(myFavorites);
//         notifyListeners();

//         DBHelper.insert('favorite_products', {
//           'id': myFavorites.id,
//           'name': myFavorites.name,
//           'latinName': myFavorites.latinName,
//           'fullLatinName': myFavorites.fullLatinName,
//           'image': myFavorites.image as String,
//           'catId': myFavorites.categoryId,
//           'brandId': myFavorites.brandId,
//           'isFav': myFavorites.isFav == true ? 1 : 0,
//         });
//       }
//     }
//   }

//   Future<void> fetchFavoriteData() async {
//     final db = await DBHelper.getData('favorite_products');
//     _favoriteItems = db
//         .map(
//           (e) => Products(
//             id: e['id'],
//             name: e['name'],
//             fullLatinName: e['fullLatinName'],
//             latinName: e['latinName'],
//             image: e['image'],
//             categoryId: e['catId'],
//             brandId: e['brandId'],
//             isFav: e['isFav'] == 1 ? true : false,
//           ),
//         )
//         .toList();

//     notifyListeners();
//   }

//   Products findById(int id) {
//     return productItems.firstWhere((element) => element.id == id);
//   }

//   bool isProductFavorite(int id) {
//     return _favoriteItems.any((element) => element.id == id);
//   }

//   //* Brands Providers
//   final List<Brands> _brandItems = brandData;

//   List<Brands> get brandItems {
//     return [..._brandItems];
//   }

//   //* Products Providers
//   final List<Products> _productItems = productsData;

//   List<Products> get productItems {
//     return [..._productItems];
//   }

// //* Alert for exit from app
//   Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
//         context: context,
//         builder: (context) => Directionality(
//           textDirection: TextDirection.rtl,
//           child: AlertDialog(
//             title: const Text(
//               'آیا می خواهید از برنامه خارج شوید؟',
//               style: TextStyle(
//                 color: Colors.black45,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             actions: [
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   elevation: 5,
//                   primary: Theme.of(context).colorScheme.primary,
//                 ),
//                 onPressed: () => Navigator.pop(context, false),
//                 child: const Text('نه هنوز'),
//               ),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Theme.of(context).colorScheme.primary,
//                 ),
//                 onPressed: () => Navigator.pop(context, true),
//                 child: const Text('بله'),
//               ),
//             ],
//           ),
//         ),
//       );
// }

