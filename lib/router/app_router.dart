import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../domain/entities/task_entities.dart';
import '../presentation/home/home_page.dart';

import '../presentation/task_create/task_create_page.dart';
import '../presentation/task_update/task_update_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: HomeRoute.page, path: '/'),
        AutoRoute(page: TaskCreateRoute.page),
        AutoRoute(page: TaskUpdateRoute.page),
      ];
}
