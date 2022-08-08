import 'package:kimia_faraz/models/depot_list_model.dart';
import 'package:kimia_faraz/models/favorite_model.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:path/path.dart' as pathPackage;

import '../models/depot_model.dart';

class DBHelperr {
  static final DBHelperr instance = DBHelperr._init();

  static sqflite.Database? _database;

  DBHelperr._init();

  Future<sqflite.Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('tpoost.db');
    return _database!;
  }

  Future<sqflite.Database> _initDB(String filePath) async {
    final dbPath = await sqflite.getDatabasesPath();
    final path = pathPackage.join(dbPath, filePath);

    return await sqflite.openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(sqflite.Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const intType = 'INTEGER NOT NULL';
    const intTypeNull = 'INTEGER';

    await db.execute('''
      CREATE TABLE $tableDepotList (
        ${DepotListFields.id} $idType,
        ${DepotListFields.title} $textType,
        ${DepotListFields.createdTime} $textType
      )
    ''');

    await db.execute('''
      CREATE TABLE $tableDepotProducts (
        ${DepotProductsFields.id} $idType,
        ${DepotProductsFields.name} $textType,
        ${DepotProductsFields.brand} $textType,
        ${DepotProductsFields.count} $intType,
        ${DepotProductsFields.barcode} $intTypeNull
      )
    ''');

    await db.execute('''
      CREATE TABLE $tableFavoriteProducts (
        ${FavoriteProductsFields.id} $idType,
        ${FavoriteProductsFields.productId} $intType
      )
    ''');
  }

//* DepotProducts logics

  Future<DepotProducts> insertDepotProduct(DepotProducts depotProducts) async {
    final db = await instance.database;
    final id = await db.insert(tableDepotProducts, depotProducts.toJson());

    return depotProducts.copy(id: id);
  }

  Future<DepotProducts> searchDepotProductsData(int id) async {
    final db = await instance.database;

    final mapsData = await db.query(
      tableDepotProducts,
      columns: DepotProductsFields.values,
      where: '${DepotProductsFields.id} = ?',
      whereArgs: [id],
    );

    if (mapsData.isNotEmpty) {
      return DepotProducts.fromJson(mapsData.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<DepotProducts>> fetchDepotProductsData() async {
    final db = await instance.database;
    const orderBy = '${DepotProductsFields.brand} ASC';
    final result = await db.query(tableDepotProducts, orderBy: orderBy);

    return result.map((e) => DepotProducts.fromJson(e)).toList();
  }

  Future<int> updateDepotProduct(DepotProducts depotProducts) async {
    final db = await instance.database;

    return db.update(
      tableDepotProducts,
      depotProducts.toJson(),
      where: '${DepotProductsFields.id} = ?',
      whereArgs: [depotProducts.id],
    );
  }

  Future<int> deleteDepotProduct(DepotProducts depotProducts) async {
    final db = await instance.database;

    return db.delete(
      tableDepotProducts,
      where: '${DepotProductsFields.id} = ?',
      whereArgs: [depotProducts.id],
    );
  }

//* DepotList logics

  Future<DepotList> insertDepotList(DepotList depotList) async {
    final db = await instance.database;
    final id = await db.insert(tableDepotList, depotList.toJson());

    return depotList.copy(id: id);
  }

  Future<List<DepotList>> fetchDepotListData() async {
    final db = await instance.database;
    const orderBy = '${DepotListFields.createdTime} ASC';
    final result = await db.query(tableDepotList, orderBy: orderBy);

    return result.map((e) => DepotList.fromJson(e)).toList();
  }

  Future<int> updateDepotList(DepotList depotList) async {
    final db = await instance.database;

    return db.update(
      tableDepotList,
      depotList.toJson(),
      where: '${DepotListFields.id} = ?',
      whereArgs: [depotList.id],
    );
  }

  Future<int> deleteDepotList(DepotList depotList) async {
    final db = await instance.database;

    return db.delete(
      tableDepotList,
      where: '${DepotListFields.id} = ?',
      whereArgs: [depotList.id],
    );
  }

  Future closeDB() async {
    final db = await instance.database;

    db.close();
  }
}

class DBHelper {
  static Future<sqflite.Database> database() async {
    final dbPath = await sqflite.getDatabasesPath();
    const idType = 'INTEGER PRIMARY KEY';
    const textType = 'TEXT NOT NULL';
    const intType = 'INTEGER NOT NULL';

    return await sqflite.openDatabase(
      pathPackage.join(dbPath, 'tpoost.db'),
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
