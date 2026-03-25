import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:auc_app/core/navigation/nav_link.dart';
import 'package:auc_app/core/navigation/navigation_path_utils.dart';
import 'package:auc_app/router/routes.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({super.key, required this.child});

  final Widget child;

  static const _items = <({String path, String label})>[
    (path: AppRoutes.home, label: 'Home'),
    (path: AppRoutes.club, label: 'Club info'),
    (path: AppRoutes.youth, label: 'Youth'),
    (path: AppRoutes.adults, label: 'Adults'),
    (path: AppRoutes.board, label: 'Board'),
  ];

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 16,
        title: Row(
          children: [
            Text(
              'AUC',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (final item in _items)
                        NavLink(
                          path: item.path,
                          label: item.label,
                          selected: primaryNavPathMatches(location, item.path),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
