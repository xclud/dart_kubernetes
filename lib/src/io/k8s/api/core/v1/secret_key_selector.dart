// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// SecretKeySelector selects a key of a Secret.
class SecretKeySelector {
  /// Default constructor.
  const SecretKeySelector({
    required this.key,
    this.name,
    this.optional,
  });

  /// Creates a [SecretKeySelector] from JSON data.
  factory SecretKeySelector.fromJson(Map<String, dynamic> json) {
    final tempKeyJson = json['key'];
    final tempNameJson = json['name'];
    final tempOptionalJson = json['optional'];

    final tempKey = tempKeyJson;
    final tempName = tempNameJson;
    final tempOptional = tempOptionalJson;

    return SecretKeySelector(
      key: tempKey,
      name: tempName,
      optional: tempOptional,
    );
  }

  /// The key of the secret to select from.  Must be a valid secret key.
  final String key;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// Specify whether the Secret or its key must be defined.
  final bool? optional;

  /// Converts a [SecretKeySelector] instance to JSON data.
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
