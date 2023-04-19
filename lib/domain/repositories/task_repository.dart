import 'package:flutter_todo_app/domain/entities/task_entities.dart';

abstract class TaskRepository {
  Future<void> createTask(TaskEntities taskEntities);

  Future<List<TaskEntities>> getTasks(String userId);

  Future<void> updateTask(
    TaskEntities taskEntities,
  );

  Future<void> deleteTask(
    TaskEntities taskEntities,
  );
}
