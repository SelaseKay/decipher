import 'package:decipher/model/company.dart';
import 'package:decipher/model/question.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';

class DatabaseHelper {
  static Database? _database;

  // Private constructor to prevent multiple instances of the class
  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  Future<Database> _initDatabase([String dbName = "companies.db"]) async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, dbName);

    // Check if the database already exists to avoid unnecessary copying
    if (await databaseExists(path)) {
      return openDatabase(path);
    }

    // Copy the prepopulated database from assets to local storage
    final data = await rootBundle.load('assets/db/$dbName');
    final List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(path).writeAsBytes(bytes, flush: true);

    return openDatabase(path);
  }

  Future<List<Company>> getCompanies(String filter,
      [String searchQuery = ""]) async {
    _database ??= await _initDatabase();

    final List<Map<String, dynamic>> maps;

    if (filter == "NONE" && searchQuery.isEmpty) {
      maps = await _database!.query('internship');

      return List.generate(
        maps.length,
        (index) => Company(
          name: maps[index]["Company"],
          region: maps[index]["Region"],
          isShortListed: maps[index]["is_shortlisted"] == 0 ? false : true,
        ),
      );
    } else if (filter == "NONE" && searchQuery.isNotEmpty) {
      maps = await _database!.query('internship');
      final companies = List.generate(
        maps.length,
        (index) => Company(
          name: maps[index]["Company"],
          region: maps[index]["Region"],
          isShortListed: maps[index]["is_shortlisted"] == 0 ? false : true,
        ),
      );
      return companies
          .where((item) =>
              item.name.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    }
    maps = await _database!.query('internship',
        columns: ["Company", "Region", "is_shortlisted"],
        where: "Region = ?",
        whereArgs: [filter]);

    final companies = List.generate(
      maps.length,
      (index) => Company(
        name: maps[index]["Company"],
        region: maps[index]["Region"],
        isShortListed: maps[index]["is_shortlisted"] == 0 ? false : true,
      ),
    );

    return companies
        .where((item) =>
            item.name.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
  }

  Future<void> updateField(String company, int value) async {
    await _database?.update(
      "internship",
      {"is_shortlisted": value},
      where: "Company = ?",
      whereArgs: [company],
    );
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

  Future<List<Question>> getQuestions(String dbName, String tableName) async {
    _database ??= await _initDatabase(dbName);

    final List<Map<String, dynamic>> maps = await _database!.query(tableName);

    final List<Question> questions = List.generate(
      maps.length,
      (index) => Question(
        id: maps[index]["id"],
        text: maps[index]["questions"],
        optionA: maps[index]["A"],
        optionB: maps[index]["B"],
        optionC: maps[index]["C"],
        optionD: maps[index]["D"],
        correctAnswer: maps[index]["answer"],
      ),
    );
    questions.shuffle();
    return questions;
  }

  closeDb() async {
    await _database?.close();
    _database = null;
  }
}
