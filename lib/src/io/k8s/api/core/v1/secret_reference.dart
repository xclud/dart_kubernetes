// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace.
class SecretReference {
  /// Default constructor.
  const SecretReference({
    this.name,
    this.namespace,
  });

  /// Creates a [SecretReference] from JSON data.
  factory SecretReference.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];

    final String? tempName = tempNameJson;
    final String? tempNamespace = tempNamespaceJson;

    return SecretReference(
      name: tempName,
      namespace: tempNamespace,
    );
  }

  /// name is unique within a namespace to reference a secret resource.
  final String? name;

  /// namespace defines the space within which the secret name must be unique.
  final String? namespace;

  /// Converts a [SecretReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempNamespace = namespace;

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempNamespace != null) {
      jsonData['namespace'] = tempNamespace;
    }

    return jsonData;
  }
}
