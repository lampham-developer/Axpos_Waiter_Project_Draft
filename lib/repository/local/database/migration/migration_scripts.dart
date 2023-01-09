class MigrationScripts {
  static List<String> initialScript() {
    return [
      '''
        CREATE TABLE MockModel (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name TEXT,
          last_name TEXT
        )
      '''
    ];
  }

  static List<String> migrationsScript() {
    return [
      '''
        CREATE TABLE TestModel (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          age INTEGER
        )
      '''
    ];
  }
}
