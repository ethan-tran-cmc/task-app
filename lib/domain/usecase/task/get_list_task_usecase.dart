import 'package:flutter_todo_app/domain/usecase/use_case.dart';
import 'package:injectable/injectable.dart';

import '../../entities/task_entities.dart';
import '../../repositories/task_repository.dart';

@LazySingleton()
class GetListTaskUseCase implements FutureUseCase<String, List<TaskEntities>> {
  final TaskRepository _taskRepository;
  GetListTaskUseCase(this._taskRepository);

  @override
  Future<List<TaskEntities>> run(String userId) {
    return _taskRepository.getTasks(userId);
  }
}
