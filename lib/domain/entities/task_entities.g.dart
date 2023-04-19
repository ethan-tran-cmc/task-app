// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskEntities _$$_TaskEntitiesFromJson(Map<String, dynamic> json) =>
    _$_TaskEntities(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      image: json['image'] as String,
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_TaskEntitiesToJson(_$_TaskEntities instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'image': instance.image,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'userId': instance.userId,
    };

const _$TaskStatusEnumMap = {
  TaskStatus.inProgress: 0,
  TaskStatus.completed: 1,
};
