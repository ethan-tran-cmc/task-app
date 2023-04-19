import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo_app/utilities/converter/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_create_request.freezed.dart';

part 'task_create_request.g.dart';

@freezed
class TaskCreateRequest with _$TaskCreateRequest {
  factory TaskCreateRequest({
    required String id,
    required String title,
    required String description,
    @TimestampConverter() required DateTime createdAt,
    required String image,
    required int status,
    required String userId,
  }) = _TaskCreateRequest;

  factory TaskCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$TaskCreateRequestFromJson(json);
}
