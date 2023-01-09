import 'package:axpos_project/bloc/core/base_bloc.dart';
import 'package:axpos_project/bloc/login_bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Cubit<LoginState> with BaseBloc{
  LoginBloc() : super(LoginState.initial());

  void login(String accountName, String password){

    emit(LoginState.login());
  }
}