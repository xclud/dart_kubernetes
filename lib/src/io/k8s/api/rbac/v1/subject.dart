// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.rbac.v1;

/// Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference, or a value for non-objects such as user and group names.
class Subject {
  /// Default constructor.
  const Subject({
    this.apiGroup,
    required this.kind,
    required this.name,
    this.namespace,
  });

  /// Creates a [Subject] from JSON data.
  factory Subject.fromJson(Map<String, dynamic> json) {
    final tempApiGroupJson = json['apiGroup'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];

    final tempApiGroup = tempApiGroupJson;
    final tempKind = tempKindJson;
    final tempName = tempNameJson;
    final tempNamespace = tempNamespaceJson;

    return Subject(
      apiGroup: tempApiGroup,
      kind: tempKind,
      name: tempName,
      namespace: tempNamespace,
    );
  }

  /// APIGroup holds the API group of the referenced subject. Defaults to "" for ServiceAccount subjects. Defaults to "rbac.authorization.k8s.io" for User and Group subjects.
  final String? apiGroup;

  /// Kind of object being referenced. Values defined by this API group are "User", "Group", and "ServiceAccount". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
  final String kind;

  /// Name of the object being referenced.
  final String name;

  /// Namespace of the referenced object.  If the object kind is non-namespace, such as "User" or "Group", and this value is not empty the Authorizer should report an error.
  final String? namespace;

  /// Converts a [Subject] instance to JSON data.
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
