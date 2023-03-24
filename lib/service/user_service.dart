import 'dart:async';

import 'package:mvvm_vi_2023/model/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UserService {
  UserService();

  Future<Database> getDb() async {
    return openDatabase(
      join(await getDatabasesPath(), 'user_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT, nationality TEXT,age INTEGER, gender TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> insertUser(User user) async {
    final Database db = await getDb();

    await db.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertDummyData() async {
    final user = User(
        name: 'Lugar 1', age: 18, gender: 'Masculino', nationality: 'Peruano');

    await insertUser(user);
  }

  Future<List<User>> users() async {
    final Database db = await getDb();

    final List<Map<String, dynamic>> maps = await db.query('users');
    print(maps);
    return List.generate(maps.length, (i) {
      return User(
        id: maps[i]['id'],
        name: maps[i]['name'],
        nationality: maps[i]['nationality'],
        age: maps[i]['age'],
        gender: maps[i]['gender'],
      );
    });
  }

  Future<void> updatePlace(User user) async {
    final db = await getDb();

    await db.update(
      'users',
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  Future<void> deletePlace(int id) async {
    final db = await getDb();

    await db.delete(
      'user',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
