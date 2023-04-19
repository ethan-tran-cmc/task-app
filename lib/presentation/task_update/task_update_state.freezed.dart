// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_update_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskUpdateState {
  String get imagePath => throw _privateConstructorUsedError;
  bool get isBase64Image => throw _privateConstructorUsedError;
  TaskUpdatePageStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskUpdateStateCopyWith<TaskUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskUpdateStateCopyWith<$Res> {
  factory $TaskUpdateStateCopyWith(
          TaskUpdateState value, $Res Function(TaskUpdateState) then) =
      _$TaskUpdateStateCopyWithImpl<$Res, TaskUpdateState>;
  @useResult
  $Res call(
      {String imagePath, bool isBase64Image, TaskUpdatePageStatus status});
}

/// @nodoc
class _$TaskUpdateStateCopyWithImpl<$Res, $Val extends TaskUpdateState>
    implements $TaskUpdateStateCopyWith<$Res> {
  _$TaskUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? isBase64Image = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isBase64Image: null == isBase64Image
          ? _value.isBase64Image
          : isBase64Image // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskUpdatePageStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskUpdateStateCopyWith<$Res>
    implements $TaskUpdateStateCopyWith<$Res> {
  factory _$$_TaskUpdateStateCopyWith(
          _$_TaskUpdateState value, $Res Function(_$_TaskUpdateState) then) =
      __$$_TaskUpdateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imagePath, bool isBase64Image, TaskUpdatePageStatus status});
}

/// @nodoc
class __$$_TaskUpdateStateCopyWithImpl<$Res>
    extends _$TaskUpdateStateCopyWithImpl<$Res, _$_TaskUpdateState>
    implements _$$_TaskUpdateStateCopyWith<$Res> {
  __$$_TaskUpdateStateCopyWithImpl(
      _$_TaskUpdateState _value, $Res Function(_$_TaskUpdateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? isBase64Image = null,
    Object? status = null,
  }) {
    return _then(_$_TaskUpdateState(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isBase64Image: null == isBase64Image
          ? _value.isBase64Image
          : isBase64Image // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskUpdatePageStatus,
    ));
  }
}

/// @nodoc

class _$_TaskUpdateState implements _TaskUpdateState {
  _$_TaskUpdateState(
      {this.imagePath = '',
      this.isBase64Image = true,
      this.status = TaskUpdatePageStatus.pageInit});

  @override
  @JsonKey()
  final String imagePath;
  @override
  @JsonKey()
  final bool isBase64Image;
  @override
  @JsonKey()
  final TaskUpdatePageStatus status;

  @override
  String toString() {
    return 'TaskUpdateState(imagePath: $imagePath, isBase64Image: $isBase64Image, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskUpdateState &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isBase64Image, isBase64Image) ||
                other.isBase64Image == isBase64Image) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, imagePath, isBase64Image, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskUpdateStateCopyWith<_$_TaskUpdateState> get copyWith =>
      __$$_TaskUpdateStateCopyWithImpl<_$_TaskUpdateState>(this, _$identity);
}

abstract class _TaskUpdateState implements TaskUpdateState {
  factory _TaskUpdateState(
      {final String imagePath,
      final bool isBase64Image,
      final TaskUpdatePageStatus status}) = _$_TaskUpdateState;

  @override
  String get imagePath;
  @override
  bool get isBase64Image;
  @override
  TaskUpdatePageStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_TaskUpdateStateCopyWith<_$_TaskUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}
