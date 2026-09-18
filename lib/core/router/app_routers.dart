import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quote_hub/core/router/route_name.dart';
import 'package:quote_hub/core/router/route_path.dart';
import 'package:quote_hub/features/auth/presentation/page/splash_page.dart';
import 'package:quote_hub/features/home/presentation/bloc/quote_page/page_bloc.dart';
import 'package:quote_hub/features/home/presentation/page/home_page.dart';

final routes = GoRouter(
  initialLocation: RoutePath.splashPage,
  routes: [
    GoRoute(
      path: RoutePath.homePage,
      name: RouteName.homePage,
      builder: (context, state) =>
          BlocProvider(create: (context) => PageBloc(), child: HomePage()),
    ),
    GoRoute(
      path: RoutePath.splashPage,
      name: RouteName.splashPage,
      builder: (context, state) => SplashPage(),
    ),
  ],
);
