// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// EnvFromSource represents the source of a set of ConfigMaps.
class EnvFromSource {
  /// Default constructor.
  const EnvFromSource({
    this.configMapRef,
    this.prefix,
    this.secretRef,
  });

  /// Creates a [EnvFromSource] from JSON data.
  factory EnvFromSource.fromJson(Map<String, dynamic> json) {
    final tempConfigMapRefJson = json['configMapRef'];
    final tempPrefixJson = json['prefix'];
    final tempSecretRefJson = json['secretRef'];

    final tempConfigMapRef = tempConfigMapRefJson != null
        ? ConfigMapEnvSource.fromJson(tempConfigMapRefJson)
        : null;
    final tempPrefix = tempPrefixJson;
    final tempSecretRef = tempSecretRefJson != null
        ? SecretEnvSource.fromJson(tempSecretRefJson)
        : null;

    return EnvFromSource(
      configMapRef: tempConfigMapRef,
      prefix: tempPrefix,
      secretRef: tempSecretRef,
    );
  }

  /// The ConfigMap to select from.
  final ConfigMapEnvSource? configMapRef;

  /// An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  final String? prefix;

  /// The Secret to select from.
  final SecretEnvSource? secretRef;

  /// Converts a [EnvFromSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConfigMapRef = configMapRef;
    final tempPrefix = prefix;
    final tempSecretRef = secretRef;

    if (tempConfigMapRef != null) {
      jsonData['configMapRef'] = tempConfigMapRef.toJson();
    }

    if (tempPrefix != null) {
      jsonData['prefix'] = tempPrefix;
    }

    if (tempSecretRef != null) {
      jsonData['secretRef'] = tempSecretRef.toJson();
    }

    return jsonData;
  }
}
