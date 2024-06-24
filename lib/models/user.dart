// This file is "index.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter/helper/conversion_helper.dart';

part '../generated/models/user.freezed.dart';
part '../generated/models/user.g.dart';

@freezed
class User with _$User {
  const factory User({

    @JsonKey(fromJson: convertToString)
    required String id,

    required String name,
    required String username,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json)
  => _$UserFromJson(json);


}