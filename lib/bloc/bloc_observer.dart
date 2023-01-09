import 'package:flutter_bloc/flutter_bloc.dart';

import '../util/debug.dart';

class AppBlocObserver extends BlocObserver{

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    Debug.logMessage(trace: stackTrace, message: error);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    Debug.logMessage(trace: StackTrace.current, message: change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    Debug.logMessage(trace: StackTrace.current, message: transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    Debug.logMessage(trace: StackTrace.current, message: '$event');
    super.onEvent(bloc, event);
  }
}