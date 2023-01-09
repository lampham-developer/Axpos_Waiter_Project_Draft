import 'package:axpos_project/di/module/data_storage_module.dart';
import 'package:get_it/get_it.dart';
import 'package:axpos_project/di/di.dart';

GetIt getIt = GetIt.instance;

void configureDependencies() async {
  await RepositoryModule().provides();
  await NavigationModule().provides();
  await DataStorageModule().provides();
  await BlocModule().provides();
}
