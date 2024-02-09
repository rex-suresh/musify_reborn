import 'dart:convert' show jsonDecode, jsonEncode;

import 'package:musify_reborn/src/models/models.dart';

List<dynamic> Function(String responseData) jsonResultList =
    (String responseData) =>
        jsonDecode(responseData)['result'] as List<dynamic>;

List<dynamic> Function(String json) jsonList =
    (String json) => jsonDecode(json) as List<dynamic>;

String Function(List<DataParser> json) encodeJsonList =
    (List<DataParser> json) => jsonEncode(json);
