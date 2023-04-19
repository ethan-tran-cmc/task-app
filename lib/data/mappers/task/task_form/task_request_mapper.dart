import 'package:flutter_todo_app/data/model/task_create_request.dart';
import 'package:flutter_todo_app/domain/entities/task_entities.dart';

import '../../mapper.dart';

class TaskRequestMapper implements Mapper<TaskEntities, TaskCreateRequest> {
  @override
  TaskCreateRequest map(TaskEntities taskRequest) => TaskCreateRequest(
        id: taskRequest.id,
        title: taskRequest.title,
        description: taskRequest.description,
        createdAt: taskRequest.createdAt,
        image: taskRequest.image,
        status: taskRequest.status.statusCode,
        userId: taskRequest.userId,
      );
}

extension TaskStatusExtension on TaskStatus {
  int get statusCode {
    switch (this) {
      case TaskStatus.inProgress:
        return 0;
      case TaskStatus.completed:
        return 1;
    }
  }
}
