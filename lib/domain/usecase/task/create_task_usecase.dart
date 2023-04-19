import 'package:flutter_todo_app/domain/usecase/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../entities/task_entities.dart';
import '../../repositories/task_repository.dart';

@LazySingleton()
class CreateTaskUseCase implements FutureUseCase<TaskEntities, void> {
  final TaskRepository _taskRepository;
  CreateTaskUseCase(this._taskRepository);

  @override
  Future<void> run(TaskEntities input) {
    return _taskRepository.createTask(input);
  }
}
