import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:json_diff/json_diff.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_details_model.dart';

import '../json_utils.dart';

void main() {
  group('[serialization]', () {
    test('ContentModel', () => testSerialization<ContentModel>());
    test('ContentDetailsModel', () => testSerialization<ContentDetailsModel>());
  });
}

Future<void> testSerialization<T>() async {
  final jsonString = await File(JsonMock.getJsonMockPath<T>()).readAsString();
  final decodedJson = json.decode(jsonString);
  final jsonList = decodedJson['data'];
  expect(jsonList, const TypeMatcher<List>());

  final List<T> list = (jsonList as List)
      .cast<Map>()
      .map((map) => map.cast<String, dynamic>())
      .map((json) => JsonMock.getFromJson<T>()(json))
      .toList();
  final encodedList =
      list.map((item) => JsonMock.getToJson<T>()(item)).toList();
  final encodedJson = {'data': encodedList};

  final jsonSerializedString = json.encode(encodedJson);
  final jsonDiffer = JsonDiffer(jsonString, jsonSerializedString);
  expect(
    jsonDiffer.diff().hasNothing,
    equals(true),
    reason: jsonDiffer.diff().toString(),
  );
  expect(decodedJson, equals(encodedJson));
}
