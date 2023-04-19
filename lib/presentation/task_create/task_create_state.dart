import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_create_state.freezed.dart';

enum TaskCreatePageStatus {
  createTaskInProgress,
  createTaskSuccess,
  createTaskError,
  pageInit,
}

@freezed
class TaskCreateState with _$TaskCreateState {
  factory TaskCreateState({
    @Default('') String imagePath,
    @Default(TaskCreatePageStatus.pageInit) TaskCreatePageStatus status,
  }) = _TaskCreateState;

  factory TaskCreateState.initial() => TaskCreateState(
        imagePath: '',
        status: TaskCreatePageStatus.pageInit,
      );
}
