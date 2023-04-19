// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskCreateRequest _$$_TaskCreateRequestFromJson(Map<String, dynamic> json) =>
    _$_TaskCreateRequest(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      image: json['image'] as String,
      status: json['status'] as int,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_TaskCreateRequestToJson(
        _$_TaskCreateRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'image': instance.image,
      'status': instance.status,
      'userId': instance.userId,
    };
