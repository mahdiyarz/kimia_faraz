//* Database table name
const String tableFavoriteProducts = 'favorite_products';

//* Database table fields
class FavoriteProductsFields {
  static const String productId = 'id';
  static const String productName = 'name';
  static const String productLatinName = 'latinName';
  static const String productBrandId = 'brandId';
  static const String productImage = 'image';
}

class FavoriteProducts {
  int productId, productBrandId;
  String productName, productLatinName;
  String? productImage;

  FavoriteProducts({
    required this.productId,
    required this.productName,
    required this.productLatinName,
    required this.productBrandId,
    this.productImage,
  });

  //* Create copy method for database
  FavoriteProducts copy({
    int? productId,
    int? productBrandId,
    String? productName,
    String? productLatinName,
    String? productImage,
  }) =>
      FavoriteProducts(
        productId: productId ?? this.productId,
        productName: productName ?? this.productName,
        productLatinName: productLatinName ?? this.productLatinName,
        productBrandId: productBrandId ?? this.productBrandId,
        productImage: productImage ?? this.productImage,
      );

  //* Convert all arguments to json
  Map<String, Object?> toJson() => {
        FavoriteProductsFields.productId: productId,
        FavoriteProductsFields.productName: productName,
        FavoriteProductsFields.productLatinName: productLatinName,
        FavoriteProductsFields.productBrandId: productBrandId,
        FavoriteProductsFields.productImage: productImage,
      };

  //* Convert all arguments from json
  static FavoriteProducts fromJson(Map<String, Object?> json) =>
      FavoriteProducts(
        productId: json[FavoriteProductsFields.productId] as int,
        productName: json[FavoriteProductsFields.productName] as String,
        productLatinName:
            json[FavoriteProductsFields.productLatinName] as String,
        productBrandId: json[FavoriteProductsFields.productBrandId] as int,
        productImage: json[FavoriteProductsFields.productImage] as String,
      );
}
