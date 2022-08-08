//* Database table name
const String tableDepotProducts = 'depot_products';

//* Database table fields
class DepotProductsFields {
  static final List<String> values = [id, name, brand, count, barcode];

  static const String id = '_id';
  static const String name = 'name';
  static const String brand = 'brand';
  static const String count = 'count';
  static const String barcode = 'barcode';
}

class DepotProducts {
  int id;
  String name, brand;
  int count;
  int? barcode;

  DepotProducts({
    required this.id,
    required this.name,
    required this.brand,
    required this.count,
    this.barcode,
  });

//* Create copy method for database
  DepotProducts copy({
    int? id,
    String? name,
    String? brand,
    int? count,
    int? barcode,
  }) =>
      DepotProducts(
        id: id ?? this.id,
        name: name ?? this.name,
        brand: brand ?? this.brand,
        count: count ?? this.count,
        barcode: barcode ?? this.barcode,
      );

//* Convert all arguments to json
  Map<String, Object?> toJson() => {
        DepotProductsFields.id: id,
        DepotProductsFields.name: name,
        DepotProductsFields.brand: brand,
        DepotProductsFields.count: count,
        DepotProductsFields.barcode: barcode,
      };

//* Convert all arguments from json
  static DepotProducts fromJson(Map<String, Object?> json) => DepotProducts(
        id: json[DepotProductsFields.id] as int,
        name: json[DepotProductsFields.name] as String,
        brand: json[DepotProductsFields.brand] as String,
        count: json[DepotProductsFields.count] as int,
        barcode: json[DepotProductsFields.barcode] as int,
      );
}
