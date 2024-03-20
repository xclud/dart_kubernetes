// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Selects a key from a ConfigMap.
class ConfigMapKeySelector {
  /// Default constructor.
  const ConfigMapKeySelector({
    required this.key,
    this.name,
    this.optional,
  });

  /// Creates a [ConfigMapKeySelector] from JSON data.
  factory ConfigMapKeySelector.fromJson(Map<String, dynamic> json) {
    final tempKeyJson = json['key'];
    final tempNameJson = json['name'];
    final tempOptionalJson = json['optional'];

    final String tempKey = tempKeyJson;
    final String? tempName = tempNameJson;
    final bool? tempOptional = tempOptionalJson;

    return ConfigMapKeySelector(
      key: tempKey,
      name: tempName,
      optional: tempOptional,
    );
  }

  /// The key to select.
  final String key;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// Specify whether the ConfigMap or its key must be defined.
  final bool? optional;

  /// Converts a [ConfigMapKeySelector] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempKey = key;
    final tempName = name;
    final tempOptional = optional;

    jsonData['key'] = tempKey;

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempOptional != null) {
      jsonData['optional'] = tempOptional;
    }

    return jsonData;
  }
}
