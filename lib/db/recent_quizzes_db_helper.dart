import 'package:decipher/model/quiz.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

class RecentQuizDbHelper {
   static Database? _database;

  // Private constructor to prevent multiple instances of the class
  RecentQuizDbHelper._();

  static final RecentQuizDbHelper instance = RecentQuizDbHelper._();

  final String _dbName = "recent_quiz_database.db";

  final String _createRecentQuizTableQuery = '''
CREATE TABLE $tableName ( 
  $columnId INTEGER PRIMARY KEY autoincrement, 
  $columnTitle TEXT,
  $columnScore REAL)
''';

  Future<Database> _initDatabase(
      [Function(Database, int)? onCreate]) async {
    final databasesPath = await getDatabasesPath();
    final path = p.join(databasesPath, _dbName);



    return openDatabase(path, onCreate: onCreate, version: 1);
  }

  Future<Quiz> insertQuiz(Quiz quiz) async {
    _database ??=
        await _initDatabase( (db, version) async {
      try {
        await db.execute(_createRecentQuizTableQuery);
      } catch (e) {
        print("Database error: ${e.toString()}");
      }
    });
    await _database?.insert(tableName, quiz.toMap());
    return quiz;
  }

  Future<List<Quiz>> getQuizzes() async {
    _database ??=
        await _initDatabase( (db, version) async {

      try {
        await db.execute(_createRecentQuizTableQuery);
      } catch (e) {
        print("Database error: ${e.toString()}");
      }
    });

    final List<Map<String, dynamic>> maps = await _database!.query(tableName);

    final List<Quiz> recentQuizzes = List.generate(
      maps.length,
      (index) => Quiz(
        id: maps[index]["id"],
        title: maps[index]["title"],
        score: maps[index]["score"],
      ),
    );
    return recentQuizzes.reversed.toList();
  }

  closeDb() async{
    await _database?.close();
    _database = null;
  }
}