import 'package:axpos_project/bloc/core/base_state.dart';

enum LoginStatus { initial, doLogin, success, error }

class LoginState extends BaseState {
  final LoginStatus status;

  LoginState.state({
    this.status = LoginStatus.initial,
  });

  LoginState.initial() : this.state(status: LoginStatus.initial);

  LoginState.login() : this.state(status: LoginStatus.doLogin);

  LoginState.success() : this.state(status: LoginStatus.success);

  @override
  List<Object?> get props => [];


}
