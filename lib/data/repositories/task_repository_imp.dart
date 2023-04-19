import 'package:flutter_todo_app/domain/entities/task_entities.dart';
import 'package:flutter_todo_app/domain/repositories/task_repository.dart';
import 'package:injectable/injectable.dart';

import '../network/firebase/firestore_service.dart';

@LazySingleton(as: TaskRepository)
class TaskRepositoryImplement extends TaskRepository {
  TaskRepositoryImplement(this._firestoreService);
  final FirestoreService _firestoreService;

  @override
  Future<void> createTask(TaskEntities taskEntities) async {
    await _firestoreService.createTask(taskEntities);
  }

  @override
  Future<List<TaskEntities>> getTasks(String userId) async {
    return _firestoreService.getTasks(userId);
  }

  @override
  Future<void> updateTask(TaskEntities taskEntities) async {
    await _firestoreService.updateTask(taskEntities);
  }

  @override
  Future<void> deleteTask(TaskEntities taskEntities) async {
    await _firestoreService.deleteTask(taskEntities);
  }
}
