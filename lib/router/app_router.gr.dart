// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    TaskUpdateRoute.name: (routeData) {
      final args = routeData.argsAs<TaskUpdateRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TaskUpdatePage(
          taskEntities: args.taskEntities,
          key: args.key,
        ),
      );
    },
    TaskCreateRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TaskCreatePage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TaskUpdatePage]
class TaskUpdateRoute extends PageRouteInfo<TaskUpdateRouteArgs> {
  TaskUpdateRoute({
    required TaskEntities taskEntities,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          TaskUpdateRoute.name,
          args: TaskUpdateRouteArgs(
            taskEntities: taskEntities,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TaskUpdateRoute';

  static const PageInfo<TaskUpdateRouteArgs> page =
      PageInfo<TaskUpdateRouteArgs>(name);
}

class TaskUpdateRouteArgs {
  const TaskUpdateRouteArgs({
    required this.taskEntities,
    this.key,
  });

  final TaskEntities taskEntities;

  final Key? key;

  @override
  String toString() {
    return 'TaskUpdateRouteArgs{taskEntities: $taskEntities, key: $key}';
  }
}

/// generated route for
/// [TaskCreatePage]
class TaskCreateRoute extends PageRouteInfo<void> {
  const TaskCreateRoute({List<PageRouteInfo>? children})
      : super(
          TaskCreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskCreateRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
