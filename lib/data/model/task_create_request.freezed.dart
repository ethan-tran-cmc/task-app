// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskCreateRequest _$TaskCreateRequestFromJson(Map<String, dynamic> json) {
  return _TaskCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$TaskCreateRequest {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCreateRequestCopyWith<TaskCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateRequestCopyWith<$Res> {
  factory $TaskCreateRequestCopyWith(
          TaskCreateRequest value, $Res Function(TaskCreateRequest) then) =
      _$TaskCreateRequestCopyWithImpl<$Res, TaskCreateRequest>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @TimestampConverter() DateTime createdAt,
      String image,
      int status,
      String userId});
}

/// @nodoc
class _$TaskCreateRequestCopyWithImpl<$Res, $Val extends TaskCreateRequest>
    implements $TaskCreateRequestCopyWith<$Res> {
  _$TaskCreateRequestCopyWithImpl(this._value, this._then);

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
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskCreateRequestCopyWith<$Res>
    implements $TaskCreateRequestCopyWith<$Res> {
  factory _$$_TaskCreateRequestCopyWith(_$_TaskCreateRequest value,
          $Res Function(_$_TaskCreateRequest) then) =
      __$$_TaskCreateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      @TimestampConverter() DateTime createdAt,
      String image,
      int status,
      String userId});
}

/// @nodoc
class __$$_TaskCreateRequestCopyWithImpl<$Res>
    extends _$TaskCreateRequestCopyWithImpl<$Res, _$_TaskCreateRequest>
    implements _$$_TaskCreateRequestCopyWith<$Res> {
  __$$_TaskCreateRequestCopyWithImpl(
      _$_TaskCreateRequest _value, $Res Function(_$_TaskCreateRequest) _then)
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
    return _then(_$_TaskCreateRequest(
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
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskCreateRequest implements _TaskCreateRequest {
  _$_TaskCreateRequest(
      {required this.id,
      required this.title,
      required this.description,
      @TimestampConverter() required this.createdAt,
      required this.image,
      required this.status,
      required this.userId});

  factory _$_TaskCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TaskCreateRequestFromJson(json);

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
  final int status;
  @override
  final String userId;

  @override
  String toString() {
    return 'TaskCreateRequest(id: $id, title: $title, description: $description, createdAt: $createdAt, image: $image, status: $status, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskCreateRequest &&
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
  _$$_TaskCreateRequestCopyWith<_$_TaskCreateRequest> get copyWith =>
      __$$_TaskCreateRequestCopyWithImpl<_$_TaskCreateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskCreateRequestToJson(
      this,
    );
  }
}

abstract class _TaskCreateRequest implements TaskCreateRequest {
  factory _TaskCreateRequest(
      {required final String id,
      required final String title,
      required final String description,
      @TimestampConverter() required final DateTime createdAt,
      required final String image,
      required final int status,
      required final String userId}) = _$_TaskCreateRequest;

  factory _TaskCreateRequest.fromJson(Map<String, dynamic> json) =
      _$_TaskCreateRequest.fromJson;

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
  int get status;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCreateRequestCopyWith<_$_TaskCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
