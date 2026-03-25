import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:auc_app/core/navigation/main_scaffold.dart';
import 'package:auc_app/pages/adult_landing_page.dart';
import 'package:auc_app/pages/board_landing_page.dart';
import 'package:auc_app/pages/club_info_page.dart';
import 'package:auc_app/pages/home_page.dart';
import 'package:auc_app/pages/youth_landing_page.dart';
import 'package:auc_app/router/routes.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter createAppRouter() {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.home,
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainScaffold(child: child),
        routes: [
          GoRoute(
            path: AppRoutes.home,
            name: 'home',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: AppRoutes.club,
            name: 'club',
            builder: (context, state) => const ClubInfoPage(),
          ),
          GoRoute(
            path: AppRoutes.youth,
            name: 'youth',
            builder: (context, state) => const YouthLandingPage(),
          ),
          GoRoute(
            path: AppRoutes.adults,
            name: 'adults',
            builder: (context, state) => const AdultLandingPage(),
          ),
          GoRoute(
            path: AppRoutes.board,
            name: 'board',
            builder: (context, state) => const BoardLandingPage(),
          ),
        ],
      ),
    ],
  );
}

/// Global router instance for [MaterialApp.router].
final GoRouter appRouter = createAppRouter();
