// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateTodo _$CreateTodoFromJson(Map<String, dynamic> json) {
  return _CreateTodo.fromJson(json);
}

/// @nodoc
class _$CreateTodoTearOff {
  const _$CreateTodoTearOff();

  _CreateTodo call({required String title, required String detail}) {
    return _CreateTodo(
      title: title,
      detail: detail,
    );
  }

  CreateTodo fromJson(Map<String, Object> json) {
    return CreateTodo.fromJson(json);
  }
}

/// @nodoc
const $CreateTodo = _$CreateTodoTearOff();

/// @nodoc
mixin _$CreateTodo {
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTodoCopyWith<CreateTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTodoCopyWith<$Res> {
  factory $CreateTodoCopyWith(
          CreateTodo value, $Res Function(CreateTodo) then) =
      _$CreateTodoCopyWithImpl<$Res>;
  $Res call({String title, String detail});
}

/// @nodoc
class _$CreateTodoCopyWithImpl<$Res> implements $CreateTodoCopyWith<$Res> {
  _$CreateTodoCopyWithImpl(this._value, this._then);

  final CreateTodo _value;
  // ignore: unused_field
  final $Res Function(CreateTodo) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CreateTodoCopyWith<$Res> implements $CreateTodoCopyWith<$Res> {
  factory _$CreateTodoCopyWith(
          _CreateTodo value, $Res Function(_CreateTodo) then) =
      __$CreateTodoCopyWithImpl<$Res>;
  @override
  $Res call({String title, String detail});
}

/// @nodoc
class __$CreateTodoCopyWithImpl<$Res> extends _$CreateTodoCopyWithImpl<$Res>
    implements _$CreateTodoCopyWith<$Res> {
  __$CreateTodoCopyWithImpl(
      _CreateTodo _value, $Res Function(_CreateTodo) _then)
      : super(_value, (v) => _then(v as _CreateTodo));

  @override
  _CreateTodo get _value => super._value as _CreateTodo;

  @override
  $Res call({
    Object? title = freezed,
    Object? detail = freezed,
  }) {
    return _then(_CreateTodo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateTodo implements _CreateTodo {
  const _$_CreateTodo({required this.title, required this.detail});

  factory _$_CreateTodo.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateTodoFromJson(json);

  @override
  final String title;
  @override
  final String detail;

  @override
  String toString() {
    return 'CreateTodo(title: $title, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateTodo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(detail);

  @JsonKey(ignore: true)
  @override
  _$CreateTodoCopyWith<_CreateTodo> get copyWith =>
      __$CreateTodoCopyWithImpl<_CreateTodo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateTodoToJson(this);
  }
}

abstract class _CreateTodo implements CreateTodo {
  const factory _CreateTodo({required String title, required String detail}) =
      _$_CreateTodo;

  factory _CreateTodo.fromJson(Map<String, dynamic> json) =
      _$_CreateTodo.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateTodoCopyWith<_CreateTodo> get copyWith =>
      throw _privateConstructorUsedError;
}
