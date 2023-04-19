import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_update_state.freezed.dart';

enum TaskUpdatePageStatus {
  updateTaskInProgress,
  updateTaskSuccess,
  updateTaskError,
  pageInit,
}

@freezed
class TaskUpdateState with _$TaskUpdateState {
  factory TaskUpdateState({
    @Default('') String imagePath,
    @Default(true) bool isBase64Image,
    @Default(TaskUpdatePageStatus.pageInit) TaskUpdatePageStatus status,
  }) = _TaskUpdateState;

  factory TaskUpdateState.initial() => TaskUpdateState(
        imagePath: '',
        status: TaskUpdatePageStatus.pageInit,
        isBase64Image: true,
      );
}
