import 'package:sqflite/sqflite.dart';

class DbHelper {
  String? path;
  DbHelper({this.path});
  Database? _db;

  Database get getDb {
    return _db!;
  }
}
