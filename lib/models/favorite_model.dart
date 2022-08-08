final String tableFavoriteProducts = 'favorite_products';

class FavoriteProductsFields {
  static final String id = '_id';
  static final String productId = 'productId';
}

class FavoriteProducts {
  int id;
  int productId;

  FavoriteProducts({
    required this.id,
    required this.productId,
  });
}
