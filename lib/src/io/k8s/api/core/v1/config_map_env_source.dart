// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
///
/// The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
class ConfigMapEnvSource {
  /// Default constructor.
  const ConfigMapEnvSource({
    this.name,
    this.optional,
  });

  /// Creates a [ConfigMapEnvSource] from JSON data.
  factory ConfigMapEnvSource.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempOptionalJson = json['optional'];

    final String? tempName = tempNameJson;
    final bool? tempOptional = tempOptionalJson;

    return ConfigMapEnvSource(
      name: tempName,
      optional: tempOptional,
    );
  }

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// Specify whether the ConfigMap must be defined.
  final bool? optional;

  /// Converts a [ConfigMapEnvSource] instance to JSON data.
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
