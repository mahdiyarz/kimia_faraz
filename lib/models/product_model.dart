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
  String name, method, image, latinName, skinType, fullLatinName;
  List<String> points, description, color;
  List<Map<String, String>> activeIngredients;

  Products({
    required this.id,
    required this.name,
    required this.latinName,
    required this.fullLatinName,
    required this.categoryId,
    required this.brandId,
    required this.description,
    required this.points,
    required this.activeIngredients,
    required this.image,
    required this.method,
    required this.color,
    required this.skinType,
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
