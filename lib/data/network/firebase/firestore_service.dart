import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo_app/utilities/extension/firebase_firestore_extension.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/task_entities.dart';
import '../../mappers/task/task_form/task_request_mapper.dart';
import '../../mappers/task/task_form/task_response_mapper.dart';

@lazySingleton
class FirestoreService {
  final firestore = FirebaseFirestore.instance;

  Future<void> createTask(TaskEntities taskEntities) async {
    await firestore
        .tasksNode()
        .add(TaskRequestMapper().map(taskEntities).toJson());
  }

  Future<List<TaskEntities>> getTasks(String userId) async {
    final firestoreDoc =
        await firestore.tasksNode().where('userId', isEqualTo: userId).get();
    return firestoreDoc.docs.map((e) => TaskResponseMapper().map(e)).toList();
  }

  Future<void> updateTask(TaskEntities taskEntities) async {
    final docs = await firestore
        .tasksNode()
        .where('id', isEqualTo: taskEntities.id)
        .limit(1)
        .get()
        .then((value) => (value.size > 0) ? value.docs : null);
    if (docs == null) return;
    for (final item in docs) {
      await firestore.tasksNode().doc(item.id).update(
            TaskRequestMapper().map(taskEntities).toJson(),
          );
    }
  }

  Future<void> deleteTask(TaskEntities taskEntities) async {
    final docs = await firestore
        .tasksNode()
        .where('id', isEqualTo: taskEntities.id)
        .limit(1)
        .get()
        .then((value) => (value.size > 0) ? value.docs : null);
    if (docs == null) return;
    for (final item in docs) {
      await firestore.tasksNode().doc(item.id).delete();
    }
  }
}
