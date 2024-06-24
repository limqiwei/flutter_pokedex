import 'package:my_flutter/exception/variable_null_disallowed.dart';

class JsonParser {

  static int readInt(var json) {
    if (json is num) {
      return json.toInt();
    }

    int? parsed = int.tryParse(json);


    if (parsed == null) {
      throw const VariableNullDisallowed("Must have integer");
    }

    return parsed;

  }

  static int? readNullableInt(var json) {
    if (json is num) {
      return json.toInt();
    }

    return int.tryParse(json);
  }

}