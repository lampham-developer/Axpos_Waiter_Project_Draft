import 'package:axpos_project/di/di.dart';
import 'package:axpos_project/repository/remote/api_service.dart';
import 'package:axpos_project/repository/remote/app_repository_impl.dart';

import '../../repository/remote/core/api_connection_client.dart';

class RepositoryModule extends DIModule {
  final ApiConnection apiConnection = ApiConnection();
  @override
  Future<void> provides() async {
    getIt.registerLazySingleton<AppRepositoryImpl>(() => AppRepositoryImpl(ApiService(apiConnection.init())));
    getIt.registerSingleton<ApiConnection>(apiConnection);
  }
}
