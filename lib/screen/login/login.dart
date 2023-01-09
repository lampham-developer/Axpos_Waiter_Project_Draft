import 'package:axpos_project/bloc/login_bloc/login_bloc.dart';
import 'package:axpos_project/common/widgets/stateful/base_stateful.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/login_bloc/login_state.dart';

class LoginPage extends BaseStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BaseWidgetState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<LoginBloc>().login('accountName', 'password');
      },
      child: BlocConsumer<LoginBloc, LoginState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.only(top: 100),
            child: Center(
              child: Column(
                children: [
                  Text('LOGIN PAGE', style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.white),),
                  Text('User name', style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),
                  Text('Password', style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white),),],
              ),
            )
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
