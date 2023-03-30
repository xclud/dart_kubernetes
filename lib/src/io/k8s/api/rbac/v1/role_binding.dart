// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.rbac.v1;

/// RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace.
class RoleBinding {
  /// Default constructor.
  const RoleBinding({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.roleRef,
    this.subjects,
  });

  /// Creates a [RoleBinding] from JSON data.
  factory RoleBinding.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempRoleRefJson = json['roleRef'];
    final tempSubjectsJson = json['subjects'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final RoleRef tempRoleRef = RoleRef.fromJson(tempRoleRefJson);

    final List<Subject>? tempSubjects = tempSubjectsJson != null
        ? List<dynamic>.from(tempSubjectsJson)
            .map(
              (e) => Subject.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return RoleBinding(
      apiVersion: tempApiVersion,
      kind: tempKind,
      metadata: tempMetadata,
      roleRef: tempRoleRef,
      subjects: tempSubjects,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata.
  final ObjectMeta? metadata;

  /// RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
  final RoleRef roleRef;

  /// Subjects holds references to the objects the role applies to.
  final List<Subject>? subjects;

  /// Converts a [RoleBinding] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempRoleRef = roleRef;
    final tempSubjects = subjects;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    jsonData['roleRef'] = tempRoleRef.toJson();

    if (tempSubjects != null) {
      jsonData['subjects'] =
          tempSubjects.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
