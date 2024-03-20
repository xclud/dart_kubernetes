// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Typed Object Reference.
class TypedObjectReference {
  /// Default constructor.
  const TypedObjectReference({
    this.apiGroup,
    required this.kind,
    required this.name,
    this.namespace,
  });

  /// Creates a [TypedObjectReference] from JSON data.
  factory TypedObjectReference.fromJson(Map<String, dynamic> json) {
    final tempApiGroupJson = json['apiGroup'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];

    final String? tempApiGroup = tempApiGroupJson;
    final String tempKind = tempKindJson;
    final String tempName = tempNameJson;
    final String? tempNamespace = tempNamespaceJson;

    return TypedObjectReference(
      apiGroup: tempApiGroup,
      kind: tempKind,
      name: tempName,
      namespace: tempNamespace,
    );
  }

  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final String? apiGroup;

  /// Kind is the type of resource being referenced.
  final String kind;

  /// Name is the name of resource being referenced.
  final String name;

  /// Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
  final String? namespace;

  /// Converts a [TypedObjectReference] instance to JSON data.
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
