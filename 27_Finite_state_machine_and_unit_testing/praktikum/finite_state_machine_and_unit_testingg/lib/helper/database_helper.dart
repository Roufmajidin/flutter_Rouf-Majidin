import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/contact_model.dart';

class DatabaseHelper {
  static late Database _database;
  static DatabaseHelper? _databaseHelper;
  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  Future<Database> get database async {
    _database = await _initializeDb();
    return _database;
  }

  final String _tableName = 'contactsKu';
  Future<Database> _initializeDb() async {
    var db = openDatabase(
      join(await getDatabasesPath(), 'data_contact_ku.db'),
      onCreate: (db, version) async {
        await db.execute(
          '''CREATE TABLE $_tableName(
    id INTEGER PRIMARY_KEY,
    name TEXT,
    phoneNumber TEXT
  
    )''',
        );
      },
      version: 1,
    );
    return db;
  }

  //
  Future<void> insertTask(ContactModel contactModel) async {
    final Database db = await database;
    await db.insert(_tableName, contactModel.toMap());
  }

  //
  Future<List<ContactModel>> getTask() async {
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(_tableName);

    return result.map((e) => ContactModel.fromMap(e)).toList();
  }

  Future<ContactModel> getContactById(String id) async {
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    return result.map((e) => ContactModel.fromMap(e)).first;
  }

  Future<void> updateContact(String id, ContactModel contactModel) async {
    final db = await database;
    await db.update(_tableName, contactModel.toMap(),
        where: 'id = ?', whereArgs: [contactModel.id]);
  }

  Future<void> deleteContact(String id, ContactModel contactModel) async {
    final db = await database;
    await db.delete(_tableName, where: 'id = ?', whereArgs: [contactModel.id]);
    // print(contactModel.isCekhed);
    // print(contactModel.taskName);
  }

  Future<void> delete(String id, ContactModel contactModel) async {
    final db = await database;
    await db.delete(_tableName, where: 'id = ?', whereArgs: [contactModel.id]);
    // print(contactModel.isCekhed);
    // print(contactModel.taskName);
  }
}
