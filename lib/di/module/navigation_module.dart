import 'package:axpos_project/di/di.dart';

class NavigationModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt.registerLazySingleton(() => NavigationService());
  }
}