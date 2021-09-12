// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoState _$_$_TodoStateFromJson(Map<String, dynamic> json) {
  return _$_TodoState(
    id: json['id'] as int,
    title: json['title'] as String,
    detail: json['detail'] as String,
    isComplete: json['isComplete'] as bool,
  );
}

Map<String, dynamic> _$_$_TodoStateToJson(_$_TodoState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'detail': instance.detail,
      'isComplete': instance.isComplete,
    };
