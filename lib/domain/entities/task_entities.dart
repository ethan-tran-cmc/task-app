import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utilities/converter/timestamp_converter.dart';

part 'task_entities.freezed.dart';

part 'task_entities.g.dart';

enum TaskStatus {
  @JsonValue(0)
  inProgress,
  @JsonValue(1)
  completed,
}

@Freezed(makeCollectionsUnmodifiable: false)
class TaskEntities with _$TaskEntities {
  factory TaskEntities({
    required String id,
    required String title,
    required String description,
    @TimestampConverter() required DateTime createdAt,
    required String image,
    required TaskStatus status,
    // This field use to detect the task created by a specific user
    required String userId,
  }) = _TaskEntities;

  factory TaskEntities.fromJson(Map<String, dynamic> json) =>
      _$TaskEntitiesFromJson(json);
}
