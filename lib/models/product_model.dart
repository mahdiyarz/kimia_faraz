class Brands {
  int id;
  String name, image, latinName;

  Brands({
    required this.id,
    required this.name,
    required this.latinName,
    required this.image,
  });
}

class Products {
  int id, categoryId, brandId;
  String name, fullLatinName, latinName;
  String? method, image, skinType;
  List<String>? points, description, color;
  List<Map<String, String>>? activeIngredients;
  bool? isFav;

  Products({
    required this.id,
    required this.name,
    required this.latinName,
    required this.fullLatinName,
    required this.categoryId,
    required this.brandId,
    this.description,
    this.points,
    this.activeIngredients,
    this.image,
    this.method,
    this.color,
    this.skinType,
    this.isFav,
  });
}

class Category {
  int id;
  String name, latinName, image;

  Category({
    required this.id,
    required this.name,
    required this.latinName,
    required this.image,
  });
}
