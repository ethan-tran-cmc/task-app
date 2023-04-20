import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/domain/entities/task_entities.dart';
import 'package:flutter_todo_app/domain/usecase/task/get_list_task_usecase.dart';
import 'package:flutter_todo_app/domain/usecase/task/update_task_usecase.dart';
import 'package:flutter_todo_app/domain/usecase/firebase_auth/get_current_user_usecase.dart';
import 'package:flutter_todo_app/domain/usecase/firebase_auth/sign_in_anonymously_usercase.dart';
import 'package:flutter_todo_app/presentation/home/home_state.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecase/task/delete_task_usecase.dart';

@LazySingleton()
class HomeCubit extends Cubit<HomeState> {
  final GetListTaskUseCase _getListTaskUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final SignInAnonymouslyUseCase _signInAnonymouslyUseCase;
  final UpdateTaskUseCase _updateTaskUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;
  HomeCubit(
    this._getListTaskUseCase,
    this._getCurrentUserUseCase,
    this._signInAnonymouslyUseCase,
    this._updateTaskUseCase,
    this._deleteTaskUseCase,
  ) : super(HomeState.initial());

  List<TaskEntities> oldTaskList = [];

  Future<void> init() async {
    final user = _getCurrentUserUseCase.run();
    if (user == null) {
      await _signInAnonymouslyUseCase.run();
    }
    getData();
  }

  Future<void> getData() async {
    final user = _getCurrentUserUseCase.run();
    if (user != null) {
      try {
        emit(
          state.copyWith(status: HomePageStatus.getDataInProgress),
        );
        final result = await _getListTaskUseCase.run(user.uid);
        oldTaskList = result;
        final newList = state.sortTask(
          taskList: oldTaskList,
          sortBy: state.sortBy,
          sortType: state.sortType,
        );
        emit(
          state.copyWith(
            listTask: newList,
            status: HomePageStatus.getDataSuccess,
          ),
        );
      } catch (_) {
        emit(
          state.copyWith(status: HomePageStatus.getDataFail),
        );
      }
    }
  }

  Future<void> updateStatus({
    required TaskEntities taskEntities,
    required bool? statusValue,
  }) async {
    final newTaskEntities = taskEntities.copyWith(
        status:
            statusValue == true ? TaskStatus.completed : TaskStatus.inProgress);
    try {
      await _updateTaskUseCase.run(newTaskEntities);
      await getData();
    } catch (_) {
      emit(state.copyWith(status: HomePageStatus.updateStatusError));
    }
  }

  Future<void> deleteTask({required TaskEntities taskEntities}) async {
    try {
      await _deleteTaskUseCase.run(taskEntities);
      await getData();
      emit(
        state.copyWith(status: HomePageStatus.deleteTaskSuccess),
      );
    } catch (_) {
      emit(
        state.copyWith(status: HomePageStatus.deleteTaskError),
      );
    }
  }

  void searchTask(String textValue) {
    final searchList = state.search(textValue, oldTaskList);
    emit(
      state.copyWith(listTask: searchList),
    );
  }

  void sortBy(SortBy sortBy) {
    final newList = state.sortTask(
        taskList: oldTaskList, sortBy: sortBy, sortType: state.sortType);
    emit(
      state.copyWith(
        sortBy: sortBy,
        listTask: newList,
      ),
    );
  }

  void sortType(SortType sortType) {
    SortType newSortType;
    if (sortType == SortType.newest) {
      newSortType = SortType.lowest;
    } else {
      newSortType = SortType.newest;
    }
    final newList = state.sortTask(
      taskList: oldTaskList,
      sortBy: state.sortBy,
      sortType: newSortType,
    );
    emit(
      state.copyWith(
        sortType: newSortType,
        listTask: newList,
      ),
    );
  }
}
