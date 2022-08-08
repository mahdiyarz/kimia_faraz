//* Database table name
const String tableDepotList = 'depot_list';

//* Database table fields
class DepotListFields {
  static final List<String> values = [id, title, createdTime];

  static const String id = '_id';
  static const String title = 'title';
  static const String createdTime = 'createdTime';
}

class DepotList {
  final int id;
  final String title;
  final DateTime createdTime;

  DepotList({
    required this.id,
    required this.title,
    required this.createdTime,
  });

//* Create copy method for database
  DepotList copy({
    int? id,
    String? title,
    DateTime? createdTime,
  }) =>
      DepotList(
        id: id ?? this.id,
        title: title ?? this.title,
        createdTime: createdTime ?? this.createdTime,
      );

//* Convert all arguments to json
  Map<String, Object?> toJson() => {
        DepotListFields.id: id,
        DepotListFields.title: title,
        DepotListFields.createdTime: createdTime.toIso8601String(),
      };

//* Convert all arguments from json
  static DepotList fromJson(Map<String, Object?> json) => DepotList(
        id: json[DepotListFields.id] as int,
        title: json[DepotListFields.title] as String,
        createdTime: json[DepotListFields.createdTime] as DateTime,
      );
}
