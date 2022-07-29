import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:path/path.dart' as pathFile;

class DBHelper {
  static Future<sqflite.Database> database() async {
    final dbPath = await sqflite.getDatabasesPath();
    const idType = 'INTEGER PRIMARY KEY';
    const textType = 'TEXT NOT NULL';
    const intType = 'INTEGER NOT NULL';

    return await sqflite.openDatabase(
      pathFile.join(dbPath, 'tpoost.db'),
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE favorite_products (
            id $idType,
            name $textType,
            latinName $textType,
            fullLatinName $textType,
            image $textType,
            catId $intType,
            brandId $intType,
            isFav $intType
          )
        ''');
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

  static Future<int> delete(String table, int id) async {
    final db = await DBHelper.database();
    return db.delete(table, where: "id = ?", whereArgs: [id]);
  }
}
