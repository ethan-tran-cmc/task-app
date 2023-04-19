import 'package:flutter_todo_app/domain/usecase/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../entities/task_entities.dart';
import '../../repositories/task_repository.dart';

@LazySingleton()
class UpdateTaskUseCase implements FutureUseCase<TaskEntities, void> {
  final TaskRepository _taskRepository;
  UpdateTaskUseCase(this._taskRepository);

  @override
  Future<void> run(TaskEntities taskEntities) {
    return _taskRepository.updateTask(taskEntities);
  }
}
