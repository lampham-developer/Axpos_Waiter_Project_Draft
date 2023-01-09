import 'package:axpos_project/bloc/core/base_state.dart';
import 'package:axpos_project/model/response/demo_response.dart';

enum LaunchStatus {
  initial,
  success,
  openLogin,
  openHome,
  error,
}

class LaunchState extends BaseState {
  final LaunchStatus status;
  final DemoResponse? appDetails;

  LaunchState.state({
    this.status = LaunchStatus.initial,
    this.appDetails,
  });

  LaunchState.initial() : this.state(status: LaunchStatus.initial);

  LaunchState.success(DemoResponse? appDetails)
      : this.state(status: LaunchStatus.success, appDetails: appDetails);

  LaunchState.openLogin() : this.state(status: LaunchStatus.openLogin);

  LaunchState.openHome() : this.state(status: LaunchStatus.openHome);

  LaunchState.error() : this.state(status: LaunchStatus.error);

  @override
  List<Object?> get props => [status, appDetails];
}
