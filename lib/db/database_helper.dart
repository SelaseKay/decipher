import 'package:decipher/model/company.dart';
import 'package:decipher/model/question.dart';
import 'package:decipher/model/quiz.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';

class DatabaseHelper {
  static Database? _database;

  // Private constructor to prevent multiple instances of the class
  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  Future<Database> _initDatabase(
      [String dbName = "companies.db",
      Function(Database, int)? onCreate]) async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, dbName);


    final exists = await databaseExists(path);
    print("Does db exist: $exists");
    // Check if the database already exists to avoid unnecessary copying
    if (await databaseExists(path) || onCreate != null) {
      print("database already exists");
      return openDatabase(
        path,
        onCreate: onCreate,
        version: onCreate == null ? null : 1,
      );
    }

    // Copy the prepopulated database from assets to local storage
    final data = await rootBundle.load('assets/db/$dbName');
    final List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(path).writeAsBytes(bytes, flush: true);

    return openDatabase(path);
  }

  Future<List<Company>> getCompanies(String filter) async {
    _database ??= await _initDatabase();

    final List<Map<String, dynamic>> maps;

    if (filter == "NONE") {
      maps = await _database!.query('internship');

      return List.generate(
        maps.length,
        (index) => Company(
          name: maps[index]["Company"],
          region: maps[index]["Region"],
          isShortListed: maps[index]["is_shortlisted"] == 0 ? false : true,
        ),
      );
    }

    maps = await _database!.query('internship',
        columns: ["Company", "Region", "is_shortlisted"],
        where: "Region = ?",
        whereArgs: [filter]);

    return List.generate(
      maps.length,
      (index) => Company(
        name: maps[index]["Company"],
        region: maps[index]["Region"],
        isShortListed: maps[index]["is_shortlisted"] == 0 ? false : true,
      ),
    );
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

  Future<Quiz> insertQuiz(Quiz quiz) async {
    const tableName = "recent_quizzes";
    _database ??=
        await _initDatabase("recent_quizzes_database.db", (db, version) async {
      try {
        await db.execute('''
CREATE TABLE $tableName ( 
  $columnId INTEGER PRIMARY KEY autoincrement, 
  $columnTitle TEXT,
  $columnScore REAL)
''');
      } catch (e) {
        print("Database error: ${e.toString()}");
      }
    });
    await _database?.insert(tableName, quiz.toMap());
    return quiz;
  }

  Future<List<Quiz>> getQuizzes() async {
    const tableName = "recent_quizzes";
    _database ??=
        await _initDatabase("recent_quizzes_database.db", (db, version) async {
      print("recentQuiz.db has been created");

      try {
        await db.execute('''
CREATE TABLE $tableName ( 
  $columnId INTEGER PRIMARY KEY autoincrement, 
  $columnTitle TEXT,
  $columnScore REAL)
''');
      } catch (e) {
        print("Database error: ${e.toString()}");
      }

      print("recentQuiz.db has been created.........");
    });

    print("Database path: ${_database?.path}");

    print("Select query started.........");
    final List<Map<String, dynamic>> maps = await _database!.query(tableName);
    print("Select query stopped.........");

    final List<Quiz> recentQuizzes = List.generate(
      maps.length,
      (index) => Quiz(
        id: maps[index]["id"],
        title: maps[index]["title"],
        score: maps[index]["score"],
      ),
    );
    return recentQuizzes;
  }

  closeDb(){
    _database?.close();
    _database = null;
  }
}
