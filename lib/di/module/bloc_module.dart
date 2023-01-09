import 'package:axpos_project/bloc/app_bloc.dart';
import 'package:axpos_project/di/di.dart';

class BlocModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt.registerLazySingleton<AppBloc>(() => AppBloc());
  }
}
