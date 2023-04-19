// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskCreateState {
  String get imagePath => throw _privateConstructorUsedError;
  TaskCreatePageStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCreateStateCopyWith<TaskCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCreateStateCopyWith<$Res> {
  factory $TaskCreateStateCopyWith(
          TaskCreateState value, $Res Function(TaskCreateState) then) =
      _$TaskCreateStateCopyWithImpl<$Res, TaskCreateState>;
  @useResult
  $Res call({String imagePath, TaskCreatePageStatus status});
}

/// @nodoc
class _$TaskCreateStateCopyWithImpl<$Res, $Val extends TaskCreateState>
    implements $TaskCreateStateCopyWith<$Res> {
  _$TaskCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskCreatePageStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskCreateStateCopyWith<$Res>
    implements $TaskCreateStateCopyWith<$Res> {
  factory _$$_TaskCreateStateCopyWith(
          _$_TaskCreateState value, $Res Function(_$_TaskCreateState) then) =
      __$$_TaskCreateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath, TaskCreatePageStatus status});
}

/// @nodoc
class __$$_TaskCreateStateCopyWithImpl<$Res>
    extends _$TaskCreateStateCopyWithImpl<$Res, _$_TaskCreateState>
    implements _$$_TaskCreateStateCopyWith<$Res> {
  __$$_TaskCreateStateCopyWithImpl(
      _$_TaskCreateState _value, $Res Function(_$_TaskCreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? status = null,
  }) {
    return _then(_$_TaskCreateState(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskCreatePageStatus,
    ));
  }
}

/// @nodoc

class _$_TaskCreateState implements _TaskCreateState {
  _$_TaskCreateState(
      {this.imagePath = '', this.status = TaskCreatePageStatus.pageInit});

  @override
  @JsonKey()
  final String imagePath;
  @override
  @JsonKey()
  final TaskCreatePageStatus status;

  @override
  String toString() {
    return 'TaskCreateState(imagePath: $imagePath, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskCreateState &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCreateStateCopyWith<_$_TaskCreateState> get copyWith =>
      __$$_TaskCreateStateCopyWithImpl<_$_TaskCreateState>(this, _$identity);
}

abstract class _TaskCreateState implements TaskCreateState {
  factory _TaskCreateState(
      {final String imagePath,
      final TaskCreatePageStatus status}) = _$_TaskCreateState;

  @override
  String get imagePath;
  @override
  TaskCreatePageStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCreateStateCopyWith<_$_TaskCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
