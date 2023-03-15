// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// IngressClassParametersReference identifies an API object. This can be used to specify a cluster or namespace-scoped resource.
class IngressClassParametersReference {
  /// Default constructor.
  const IngressClassParametersReference({
    this.apiGroup,
    required this.kind,
    required this.name,
    this.namespace,
    this.scope,
  });

  /// Creates a [IngressClassParametersReference] from JSON data.
  factory IngressClassParametersReference.fromJson(Map<String, dynamic> json) {
    final tempApiGroupJson = json['apiGroup'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];
    final tempScopeJson = json['scope'];

    final tempApiGroup = tempApiGroupJson;
    final tempKind = tempKindJson;
    final tempName = tempNameJson;
    final tempNamespace = tempNamespaceJson;
    final tempScope = tempScopeJson;

    return IngressClassParametersReference(
      apiGroup: tempApiGroup,
      kind: tempKind,
      name: tempName,
      namespace: tempNamespace,
      scope: tempScope,
    );
  }

  /// apiGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final String? apiGroup;

  /// kind is the type of resource being referenced.
  final String kind;

  /// name is the name of resource being referenced.
  final String name;

  /// namespace is the namespace of the resource being referenced. This field is required when scope is set to "Namespace" and must be unset when scope is set to "Cluster".
  final String? namespace;

  /// scope represents if this refers to a cluster or namespace scoped resource. This may be set to "Cluster" (default) or "Namespace".
  final String? scope;

  /// Converts a [IngressClassParametersReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiGroup = apiGroup;
    final tempKind = kind;
    final tempName = name;
    final tempNamespace = namespace;
    final tempScope = scope;

    if (tempApiGroup != null) {
      jsonData['apiGroup'] = tempApiGroup;
    }

    jsonData['kind'] = tempKind;

    jsonData['name'] = tempName;

    if (tempNamespace != null) {
      jsonData['namespace'] = tempNamespace;
    }

    if (tempScope != null) {
      jsonData['scope'] = tempScope;
    }

    return jsonData;
  }
}
