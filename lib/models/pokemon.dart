// This file is "index.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter/helper/json_parser.dart';

part '../generated/models/pokemon.freezed.dart';
part '../generated/models/pokemon.g.dart';

@unfreezed
class Pokemon with _$Pokemon {

  factory Pokemon({

    @JsonKey(fromJson: JsonParser.readNullableInt)
    @Default(null) int? id,

    required String name,

    required String url,

  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, Object?> json)
  => _$PokemonFromJson(json);


}