import 'package:axpos_project/bloc/launch_bloc/launch_bloc.dart';
import 'package:axpos_project/bloc/login_bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc {
  List<BlocProvider> get providers {
    return [
      BlocProvider<LaunchBloc>(create: (context) => LaunchBloc()),
      BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
    ];
  }
}
