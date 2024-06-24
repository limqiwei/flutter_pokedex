import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:my_flutter/helper/json_parser.dart';

part '../generated/models/student.freezed.dart';
part '../generated/models/student.g.dart';

@unfreezed
class Student with _$Student {

  factory Student({

    @JsonKey(fromJson: JsonParser.readInt)
    required int id,

    required String name,

    @JsonKey(fromJson: JsonParser.readInt)

    required int age,
  }) = _Student;

  factory Student.fromJson(Map<String, Object?> json)
  => _$StudentFromJson(json);

}