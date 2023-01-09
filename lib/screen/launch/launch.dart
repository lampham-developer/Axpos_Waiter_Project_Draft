import 'package:axpos_project/bloc/launch_bloc/launch_bloc.dart';
import 'package:axpos_project/common/widgets/stateful/base_stateful.dart';
import 'package:axpos_project/route/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/launch_bloc/launch_state.dart';

class LaunchPage extends BaseStatefulWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends BaseWidgetState<LaunchPage> {

  @override
  void initState() {
    super.initState();
    context.read<LaunchBloc>().init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LaunchBloc, LaunchState>(
        builder: (context, state) {
          return Container(
            child: Text('LOADING PAGE', style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.white),),
          );
        },
        buildWhen: (previous, current) {
          return true;
        },
        listener: (context, state) {
          switch(state.status){
            case LaunchStatus.success:
            //save details, check details,etc...
              break;

            case LaunchStatus.openHome :
              Navigator.of(context).pushNamed(RoutePaths.homePage);
              break;

            case LaunchStatus.openLogin:
              Navigator.of(context).pushNamed(RoutePaths.loginPage);
              break;
            default :
              break;
          }
        },
        listenWhen: (previous, current) {
          return true;
        },
      ),
    );
  }
}
