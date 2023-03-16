// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.rbac.v1;

/// RoleRef contains information that points to the role being used.
class RoleRef {
  /// Default constructor.
  const RoleRef({
    required this.apiGroup,
    required this.kind,
    required this.name,
  });

  /// Creates a [RoleRef] from JSON data.
  factory RoleRef.fromJson(Map<String, dynamic> json) {
    final tempApiGroupJson = json['apiGroup'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];

    final String tempApiGroup = tempApiGroupJson;
    final String tempKind = tempKindJson;
    final String tempName = tempNameJson;

    return RoleRef(
      apiGroup: tempApiGroup,
      kind: tempKind,
      name: tempName,
    );
  }

  /// APIGroup is the group for the resource being referenced.
  final String apiGroup;

  /// Kind is the type of resource being referenced.
  final String kind;

  /// Name is the name of resource being referenced.
  final String name;

  /// Converts a [RoleRef] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiGroup = apiGroup;
    final tempKind = kind;
    final tempName = name;

    jsonData['apiGroup'] = tempApiGroup;

    jsonData['kind'] = tempKind;

    jsonData['name'] = tempName;

    return jsonData;
  }
}
