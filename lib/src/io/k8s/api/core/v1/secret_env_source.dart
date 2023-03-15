// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// SecretEnvSource selects a Secret to populate the environment variables with.
///
/// The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
class SecretEnvSource {
  /// Default constructor.
  const SecretEnvSource({
    this.name,
    this.optional,
  });

  /// Creates a [SecretEnvSource] from JSON data.
  factory SecretEnvSource.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempOptionalJson = json['optional'];

    final tempName = tempNameJson;
    final tempOptional = tempOptionalJson;

    return SecretEnvSource(
      name: tempName,
      optional: tempOptional,
    );
  }

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// Specify whether the Secret must be defined.
  final bool? optional;

  /// Converts a [SecretEnvSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempOptional = optional;

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempOptional != null) {
      jsonData['optional'] = tempOptional;
    }

    return jsonData;
  }
}
