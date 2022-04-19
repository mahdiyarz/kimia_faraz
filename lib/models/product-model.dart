import 'package:flutter/material.dart';

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
  String name, method, image, latinName;
  List<String> discription, activeIngredients;

  Products({
    required this.id,
    required this.name,
    required this.latinName,
    required this.categoryId,
    required this.brandId,
    required this.discription,
    required this.activeIngredients,
    required this.image,
    required this.method,
  });
}

class Category {
  int id;
  String name;

  Category({
    required this.id,
    required this.name,
  });
}
