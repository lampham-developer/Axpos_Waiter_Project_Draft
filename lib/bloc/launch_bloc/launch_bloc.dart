import 'package:axpos_project/bloc/core/base_bloc.dart';
import 'package:axpos_project/bloc/launch_bloc/launch_state.dart';
import 'package:axpos_project/model/local/user_saved_account.dart';
import 'package:axpos_project/repository/local/sharedpreferences/preferences_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LaunchBloc extends Cubit<LaunchState> with BaseBloc {
  LaunchBloc() : super(LaunchState.initial());

  void init() {
    Future.delayed(Duration(seconds: 2));
    repository.getAppDetail(1).then((value) async {
      emit(LaunchState.success(value));
      final UserSavedAccount? account =
          await pref.readData(SharedPreferencesHelper.userAccountSaved);
      if(account == null){
        emit(LaunchState.openLogin());
      }else if (account!.accessToken.isNotEmpty) {
        emit(LaunchState.openHome());
      } else {
        emit(LaunchState.openLogin());
      }
    });
  }
}
