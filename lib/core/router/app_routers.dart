import 'package:go_router/go_router.dart';
import 'package:quote_hub/core/router/route_name.dart';
import 'package:quote_hub/core/router/route_path.dart';
import 'package:quote_hub/features/home/presentation/page/home_page.dart';

final routes = GoRouter(
  initialLocation: RoutePath.homePage,
  routes: [
    GoRoute(
      path: RoutePath.homePage,
      name: RouteName.homePage,
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: RoutePath.profilePage,
      name: RouteName.profilePage,
      builder: (context, state) => HomePage(),
    ),
  ],
);
