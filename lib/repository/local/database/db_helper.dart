import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:axpos_project/repository/local/database/database.dart';

class DBHelper{
  final config = MigrationConfig(
    initializationScript: MigrationScripts.initialScript(),
    migrationScripts: MigrationScripts.migrationsScript(),
  );

  late Database database;

  factory DBHelper(){
    return DBHelper._initialState();
  }

  DBHelper._initialState() {
    database = _preloadData();
  }

  _preloadData() async {
    final databasesPath = await (getDatabasesPath());
    final path = join(databasesPath, 'demo.db');
    return await openDatabaseWithMigration(path, config);
  }
}