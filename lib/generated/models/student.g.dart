// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: JsonParser.readInt(json['id']),
      name: json['name'] as String,
      age: JsonParser.readInt(json['age']),
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
    };
