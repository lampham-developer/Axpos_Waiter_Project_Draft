import 'package:axpos_project/bloc/core/base_state.dart';
import 'package:axpos_project/di/di.dart';
import 'package:axpos_project/repository/local/database/db_helper.dart';
import 'package:axpos_project/repository/local/sharedpreferences/preferences_helper.dart';
import 'package:axpos_project/repository/remote/app_repository_impl.dart';
import 'package:axpos_project/repository/remote/core/api_connection_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc{
  final AppRepositoryImpl repository = getIt.get<AppRepositoryImpl>();
  final ApiConnection apiConnection = getIt.get<ApiConnection>();
  final SharedPreferencesHelper pref = getIt.get<SharedPreferencesHelper>();
  //final DBHelper dbHelper = getIt.get<DBHelper>();

  void catchError(Emitter emit, Object object){
    apiConnection.errorResponse(object);
    emit(ErrorState());
  }
}