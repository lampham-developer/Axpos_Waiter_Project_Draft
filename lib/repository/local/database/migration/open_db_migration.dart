import 'package:axpos_project/util/debug.dart';
import 'package:sqflite/sqflite.dart';
import 'migration.dart';

///
/// Open the database at a given path, while running the provided migration
/// scripts.
///
/// [path] (required) specifies the path to the database file.
/// [config] (required) specifies the migration configuration.
/// [openDatabase] (optional) do not override this. It is used for testing
/// purposes.
///
Future<Database> openDatabaseWithMigration(String path, MigrationConfig config,
    {openDatabase = openDatabase}) async {
  final migrator = Migrator(config);
  Debug.logMessage(message: 'version ${config.migrationScripts.length + 1}');
  return await openDatabase(path,
      version: config.migrationScripts.length + 1,
      onCreate: migrator.executeInitialization,
      onUpgrade: migrator.executeMigration);
}