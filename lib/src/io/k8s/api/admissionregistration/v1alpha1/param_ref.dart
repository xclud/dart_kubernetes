// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1alpha1;

/// ParamRef references a parameter resource.
class ParamRef {
  /// Default constructor.
  const ParamRef({
    this.name,
    this.namespace,
  });

  /// Creates a [ParamRef] from JSON data.
  factory ParamRef.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];

    final String? tempName = tempNameJson;
    final String? tempNamespace = tempNamespaceJson;

    return ParamRef(
      name: tempName,
      namespace: tempNamespace,
    );
  }

  /// Name of the resource being referenced.
  final String? name;

  /// Namespace of the referenced resource. Should be empty for the cluster-scoped resources.
  final String? namespace;

  /// Converts a [ParamRef] instance to JSON data.
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
