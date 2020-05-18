import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todoapp/models/model.dart';

abstract class DB {
  static Database _db;

  static int get _version => 1;

  static Future<void> init() async {
    if (_db != null) {
      return;
    }

    try {
      _db = await openDatabase(join(await getDatabasesPath() + 'example.db'),
          version: _version, onCreate: onCreate);
    } catch (ex) {
      print(ex);
    }
  }

  // TODO 1: Tabelle 'todo_items' erstellen mit id (als Primary Key),
  // TODO 1: task und isComplete
  static void onCreate(Database db, int version) async => {};

  // TODO 2: Query fuer Tabelle ausfuehren und Ergebnis zurueckgeben
  static Future<List<Map<String, dynamic>>> query(String table) async => null;

  // TODO 3: Eintrag in DB einfuegen und Ergebnis zurueckgeben
  static Future<int> insert(String table, Model model) async => null;

  static Future<int> update(String table, Model model) async => await _db
      .update(table, model.toMap(), where: 'id = ?', whereArgs: [model.id]);

  static Future<int> delete(String table, Model model) async =>
      await _db.delete(table, where: 'id = ?', whereArgs: [model.id]);
}
