import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/task_entities.dart';

part 'home_state.freezed.dart';

enum HomePageStatus {
  getDataInProgress,
  getDataSuccess,
  getDataFail,
  updateStatusError,
  deleteTaskError,
  deleteTaskSuccess,
  initPage,
}

enum SortType {
  newest,
  lowest,
}

enum SortBy {
  date,
  title,
  status,
}

@Freezed(makeCollectionsUnmodifiable: false)
class HomeState with _$HomeState {
  const HomeState._();
  factory HomeState({
    @Default([]) List<TaskEntities> listTask,
    @Default(HomePageStatus.initPage) HomePageStatus status,
    @Default(SortBy.date) SortBy sortBy,
    @Default(SortType.newest) SortType sortType,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        listTask: [],
        status: HomePageStatus.initPage,
        sortBy: SortBy.date,
        sortType: SortType.newest,
      );

  List<TaskEntities> search(String text, List<TaskEntities> list) {
    if (text.isEmpty) {
      return list;
    }
    final searchText = text.toLowerCase();
    return List<TaskEntities>.from(list)
        .where((task) =>
            task.title.toLowerCase().contains(searchText) ||
            task.description.toLowerCase().contains(searchText))
        .toList();
  }

  List<TaskEntities> sortTask({
    required List<TaskEntities> taskList,
    required SortBy sortBy,
    required SortType sortType,
  }) {
    switch (sortBy) {
      case SortBy.date:
        return sortByDate(taskList, sortType: sortType);
      case SortBy.title:
        return sortByTitle(taskList, sortType: sortType);
      case SortBy.status:
        return sortByStatus(taskList, sortType: sortType);
    }
  }

  List<TaskEntities> sortByTitle(List<TaskEntities> list,
      {required SortType sortType}) {
    return List<TaskEntities>.from(list)
      ..sort(
        (a, b) {
          final sort = a.title.toLowerCase().compareTo(b.title.toLowerCase());
          return sortType == SortType.newest ? sort : sort * -1;
        },
      );
  }

  List<TaskEntities> sortByDate(List<TaskEntities> list,
      {required SortType sortType}) {
    return List<TaskEntities>.from(list)
      ..sort(
        (a, b) {
          final sort = a.createdAt.compareTo(b.createdAt);
          return sortType == SortType.newest ? sort * -1 : sort;
        },
      );
  }

  List<TaskEntities> sortByStatus(List<TaskEntities> list,
      {required SortType sortType}) {
    return List<TaskEntities>.from(list)
      ..sort(
        (a, b) {
          final sort = a.status.name.compareTo(b.status.name);
          return sortType == SortType.newest ? sort : sort * -1;
        },
      );
  }
}
