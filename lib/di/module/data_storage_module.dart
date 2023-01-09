import 'package:axpos_project/di/di.dart';
import '../../repository/local/database/db_helper.dart';
import '../../repository/local/sharedpreferences/preferences_helper.dart';

class DataStorageModule extends DIModule{
  @override
  Future<void> provides() async {
    getIt.registerLazySingleton<SharedPreferencesHelper>(() => SharedPreferencesHelper());
    //getIt.registerLazySingleton<DBHelper>(() => DBHelper());
  }

}