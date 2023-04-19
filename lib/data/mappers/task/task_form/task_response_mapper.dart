import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo_app/domain/entities/task_entities.dart';

import '../../mapper.dart';

class TaskResponseMapper
    implements Mapper<QueryDocumentSnapshot<Object?>, TaskEntities> {
  @override
  TaskEntities map(QueryDocumentSnapshot<Object?> queryDocumentSnapshot) {
    final map = queryDocumentSnapshot.data() as Map<String, dynamic>;
    return TaskEntities.fromJson(map);
  }
}
