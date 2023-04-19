import 'package:flutter_todo_app/domain/usecase/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../entities/task_entities.dart';
import '../../repositories/task_repository.dart';

@LazySingleton()
class DeleteTaskUseCase implements FutureUseCase<TaskEntities, void> {
  final TaskRepository _taskRepository;
  DeleteTaskUseCase(this._taskRepository);

  @override
  Future<void> run(TaskEntities taskEntities) {
    return _taskRepository.deleteTask(taskEntities);
  }
}
