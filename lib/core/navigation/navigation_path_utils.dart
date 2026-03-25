import 'package:auc_app/router/routes.dart';

bool primaryNavPathMatches(String currentPath, String routePath) {
  if (routePath == AppRoutes.home) {
    return currentPath == AppRoutes.home || currentPath.isEmpty;
  }
  return currentPath == routePath || currentPath.startsWith('$routePath/');
}

