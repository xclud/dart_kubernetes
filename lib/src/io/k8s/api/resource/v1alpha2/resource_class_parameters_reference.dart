// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.resource.v1alpha2;

/// ResourceClassParametersReference contains enough information to let you locate the parameters for a ResourceClass.
class ResourceClassParametersReference {
  /// Default constructor.
  const ResourceClassParametersReference({
    this.apiGroup,
    required this.kind,
    required this.name,
    this.namespace,
  });

  /// Creates a [ResourceClassParametersReference] from JSON data.
  factory ResourceClassParametersReference.fromJson(Map<String, dynamic> json) {
    final tempApiGroupJson = json['apiGroup'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];

    final String? tempApiGroup = tempApiGroupJson;
    final String tempKind = tempKindJson;
    final String tempName = tempNameJson;
    final String? tempNamespace = tempNamespaceJson;

    return ResourceClassParametersReference(
      apiGroup: tempApiGroup,
      kind: tempKind,
      name: tempName,
      namespace: tempNamespace,
    );
  }

  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final String? apiGroup;

  /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata.
  final String kind;

  /// Name is the name of resource being referenced.
  final String name;

  /// Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources.
  final String? namespace;

  /// Converts a [ResourceClassParametersReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiGroup = apiGroup;
    final tempKind = kind;
    final tempName = name;
    final tempNamespace = namespace;

    if (tempApiGroup != null) {
      jsonData['apiGroup'] = tempApiGroup;
    }

    jsonData['kind'] = tempKind;

    jsonData['name'] = tempName;

    if (tempNamespace != null) {
      jsonData['namespace'] = tempNamespace;
    }

    return jsonData;
  }
}
