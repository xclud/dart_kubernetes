// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
class TypedLocalObjectReference {
  /// Default constructor.
  const TypedLocalObjectReference({
    this.apiGroup,
    required this.kind,
    required this.name,
  });

  /// Creates a [TypedLocalObjectReference] from JSON data.
  factory TypedLocalObjectReference.fromJson(Map<String, dynamic> json) {
    final tempApiGroupJson = json['apiGroup'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];

    final tempApiGroup = tempApiGroupJson;
    final tempKind = tempKindJson;
    final tempName = tempNameJson;

    return TypedLocalObjectReference(
      apiGroup: tempApiGroup,
      kind: tempKind,
      name: tempName,
    );
  }

  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final String? apiGroup;

  /// Kind is the type of resource being referenced.
  final String kind;

  /// Name is the name of resource being referenced.
  final String name;

  /// Converts a [TypedLocalObjectReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiGroup = apiGroup;
    final tempKind = kind;
    final tempName = name;

    if (tempApiGroup != null) {
      jsonData['apiGroup'] = tempApiGroup;
    }

    jsonData['kind'] = tempKind;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
