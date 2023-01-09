import 'package:axpos_project/bloc/app_bloc.dart';
import 'package:axpos_project/bloc/bloc_observer.dart';
import 'package:axpos_project/route/route_observer.dart';
import 'package:axpos_project/route/route_path.dart';
import 'package:axpos_project/route/router.dart';
import 'package:axpos_project/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'di/injection/injection.dart';
import 'di/service/navigation_service.dart';

void main() async {
  configureDependencies();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: getIt.get<AppBloc>().providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: appTextTheme, fontFamily: fontFamily),
        initialRoute: RoutePaths.launch,
        onGenerateRoute: AppRouter.generateRoute,
        navigatorObservers: [AppRouteObserver()],
        navigatorKey: getIt.get<NavigationService>().navigatorKey,
      ),
    );
  }
}
