import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/domain/entities/task_entities.dart';
import 'package:flutter_todo_app/domain/usecase/task/update_task_usecase.dart';
import 'package:flutter_todo_app/presentation/task_update/task_update_state.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@injectable
class TaskUpdateCubit extends Cubit<TaskUpdateState> {
  final UpdateTaskUseCase _updateTaskUseCase;
  TaskUpdateCubit(
    this._updateTaskUseCase,
  ) : super(TaskUpdateState.initial());

  final uuid = const Uuid();

  void updateImagePath({
    required String imagePath,
    bool isBase64Image = false,
  }) {
    emit(
      state.copyWith(
        imagePath: imagePath,
        isBase64Image: isBase64Image,
      ),
    );
  }

  Future<void> updateTask(
    String title,
    String description,
    DateTime dateTime,
    TaskEntities taskEntities,
  ) async {
    String base64Image = "";

    if (state.imagePath.isNotEmpty && !state.isBase64Image) {
      File file = File(state.imagePath);
      Uint8List bytes = file.readAsBytesSync();
      base64Image = base64Encode(bytes);
    } else {
      base64Image = state.imagePath;
    }
    emit(
      state.copyWith(
        status: TaskUpdatePageStatus.updateTaskInProgress,
      ),
    );
    try {
      await _updateTaskUseCase.run(
        TaskEntities(
          id: taskEntities.id,
          title: title,
          description: description,
          createdAt: dateTime,
          image: base64Image,
          status: taskEntities.status,
          userId: taskEntities.userId,
        ),
      );
      emit(
        state.copyWith(status: TaskUpdatePageStatus.updateTaskSuccess),
      );
    } catch (e) {
      emit(
        state.copyWith(status: TaskUpdatePageStatus.updateTaskError),
      );
    }
  }
}
