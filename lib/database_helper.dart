import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static const String _databaseName = "Internship.db";
  static const _databaseVersion = 1;
  static const _tablename = 'MACE Record';
  static const columnId = 'ID';
  static const columnName = 'Name';
  static const columnAge = 'Age';

  //Creating variable for Database Class
  late Database _database;

  //to Check if the database is already existing or not
  Future<void> getDatabaseConnectin() async {
    final directorypath = await getApplicationDocumentsDirectory();
    final path = join(directorypath.path, _databaseName);
    _database = await openDatabase(path, version: _databaseVersion, onCreate: _onCreate,);
  }

//creating table
Future<void>_onCreate(Database db,int version)async{
    await db.execute(
      """
      CREATE TABLE $_tablename(
      $columnId INTEGER PRIMARY KEY,
      $columnName TEXT NOT NULL
      $columnAge INTEGER NOT NULL)
      """
    );
}
//insert values to table
Future<int>insert(Map<String,dynamic>row)async{
    return await _database.insert(_tablename,row);
}

//update data from table
  Future<int> update(Map<String, dynamic> row) async {
    int id = row[columnId];
    return await _database.update(
      _tablename,
      row,
      where: '$columnId = ?',
      whereArgs: [id],
    );}
//delete
    Future<int> delete(int id) async {
      return await _database.delete(
        _tablename,
        where: '$columnId = ?',
        whereArgs: [id],
      );
}
//rowcount
Future<int>queryRowCount()async{
  final count=await _database.rawQuery(
    "SELECT COUNT(*)FROM $_tablename"
  );
  return Sqflite.firstIntValue(count)??0;
  }
  //queryallrows
  Future<List<Map<String,dynamic >>> queryAllRows()async{
      return await _database.query(_tablename);

}
}