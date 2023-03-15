// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ObjectFieldSelector selects an APIVersioned field of an object.
class ObjectFieldSelector {
  /// Default constructor.
  const ObjectFieldSelector({
    this.apiVersion,
    required this.fieldPath,
  });

  /// Creates a [ObjectFieldSelector] from JSON data.
  factory ObjectFieldSelector.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempFieldPathJson = json['fieldPath'];

    final tempApiVersion = tempApiVersionJson;
    final tempFieldPath = tempFieldPathJson;

    return ObjectFieldSelector(
      apiVersion: tempApiVersion,
      fieldPath: tempFieldPath,
    );
  }

  /// Version of the schema the FieldPath is written in terms of, defaults to "v1".
  final String? apiVersion;

  /// Path of the field to select in the specified API version.
  final String fieldPath;

  /// Converts a [ObjectFieldSelector] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempFieldPath = fieldPath;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    jsonData['fieldPath'] = tempFieldPath;

    return jsonData;
  }
}
