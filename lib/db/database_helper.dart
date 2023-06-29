import 'package:decipher/model/company.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';



class DatabaseHelper {
  static Database? _database;

  // Private constructor to prevent multiple instances of the class
  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'companies.db');

    // Check if the database already exists to avoid unnecessary copying
    if (await databaseExists(path)) {
      return openDatabase(path);
    }

    // Copy the prepopulated database from assets to local storage
    final data = await rootBundle.load('assets/db/companies.db');
    final List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(path).writeAsBytes(bytes, flush: true);

    return openDatabase(path);
  }

  Future<List<Company>> get companies async {
    _database ??= await _initDatabase();

    final List<Map<String, dynamic>> maps =
        await _database!.query('internship');

    final List<Company> companies = List.generate(
      maps.length,
      (index) => Company(
        name: maps[index]["Company"],
        region: maps[index]["Region"],
        isShortListed: maps[index]["is_shortlisted"] == 0 ? false : true,
      ),
    );
    return companies;
  }

  Future<void> updateField(String company, int value) async {
    print("Company name: $company");
    int? count = await _database?.update(
      "internship",
      {"is_shortlisted": value},
      where: "Company = ?",
      whereArgs: [company],
    );
    print("count is $count");
  }

  Future<List<Company>> get shortlistedCompanies async {
    _database ??= await _initDatabase();
    final List<Map<String, dynamic>> maps = await _database!.query('internship',
        columns: ["Company", "Region", "is_shortlisted"],
        where: "is_shortlisted = ?",
        whereArgs: [1]);
    final List<Company> companies = List.generate(
      maps.length,
      (index) => Company(
        name: maps[index]["Company"],
        region: maps[index]["Region"],
        isShortListed: true,
      ),
    );
    return companies;
  }

  Future<List<Map<String, dynamic>>?> executeQuery(String query) async {
    final db = await database;
    return db?.rawQuery(query);
  }
}
