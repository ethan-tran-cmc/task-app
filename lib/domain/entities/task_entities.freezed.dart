// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskEntities _$TaskEntitiesFromJson(Map<String, dynamic> json) {
  return _TaskEntities.fromJson(json);
}

/// @nodoc
mixin _$TaskEntities {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  TaskStatus get status =>
      throw _privateConstructorUsedError; // This field use to detect the task created by a specific user
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskEntitiesCopyWith<TaskEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEntitiesCopyWith<$Res> {
  factory $TaskEntitiesCopyWith(
          TaskEntities value, $Res Function(TaskEntities) then) =
      _$TaskEntitiesCopyWithImpl<$Res, TaskEntities>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @TimestampConverter() DateTime createdAt,
      String image,
      TaskStatus status,
      String userId});
}

/// @nodoc
class _$TaskEntitiesCopyWithImpl<$Res, $Val extends TaskEntities>
    implements $TaskEntitiesCopyWith<$Res> {
  _$TaskEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? createdAt = null,
    Object? image = null,
    Object? status = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskEntitiesCopyWith<$Res>
    implements $TaskEntitiesCopyWith<$Res> {
  factory _$$_TaskEntitiesCopyWith(
          _$_TaskEntities value, $Res Function(_$_TaskEntities) then) =
      __$$_TaskEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @TimestampConverter() DateTime createdAt,
      String image,
      TaskStatus status,
      String userId});
}

/// @nodoc
class __$$_TaskEntitiesCopyWithImpl<$Res>
    extends _$TaskEntitiesCopyWithImpl<$Res, _$_TaskEntities>
    implements _$$_TaskEntitiesCopyWith<$Res> {
  __$$_TaskEntitiesCopyWithImpl(
      _$_TaskEntities _value, $Res Function(_$_TaskEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? createdAt = null,
    Object? image = null,
    Object? status = null,
    Object? userId = null,
  }) {
    return _then(_$_TaskEntities(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskEntities implements _TaskEntities {
  _$_TaskEntities(
      {required this.id,
      required this.title,
      required this.description,
      @TimestampConverter() required this.createdAt,
      required this.image,
      required this.status,
      required this.userId});

  factory _$_TaskEntities.fromJson(Map<String, dynamic> json) =>
      _$$_TaskEntitiesFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final String image;
  @override
  final TaskStatus status;
// This field use to detect the task created by a specific user
  @override
  final String userId;

  @override
  String toString() {
    return 'TaskEntities(id: $id, title: $title, description: $description, createdAt: $createdAt, image: $image, status: $status, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, createdAt, image, status, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskEntitiesCopyWith<_$_TaskEntities> get copyWith =>
      __$$_TaskEntitiesCopyWithImpl<_$_TaskEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskEntitiesToJson(
      this,
    );
  }
}

abstract class _TaskEntities implements TaskEntities {
  factory _TaskEntities(
      {required final String id,
      required final String title,
      required final String description,
      @TimestampConverter() required final DateTime createdAt,
      required final String image,
      required final TaskStatus status,
      required final String userId}) = _$_TaskEntities;

  factory _TaskEntities.fromJson(Map<String, dynamic> json) =
      _$_TaskEntities.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  String get image;
  @override
  TaskStatus get status;
  @override // This field use to detect the task created by a specific user
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_TaskEntitiesCopyWith<_$_TaskEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
