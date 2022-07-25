import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:path/path.dart' as pathFile;

class DBHelper {
  static Future<sqflite.Database> database() async {
    final dbPath = await sqflite.getDatabasesPath();
    return sqflite.openDatabase(
      pathFile.join(dbPath, 'tpoost.db'),
      onCreate: (db, version) {
        return db.execute(
            "CREATE TABLE product(productId TEXT PRIMARY KEY, productFav INTEGER)");
      },
      version: 1,
    );
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await DBHelper.database();
    db.insert(
      table,
      data,
      conflictAlgorithm: sqflite.ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DBHelper.database();
    return db.query(table);
  }
}
