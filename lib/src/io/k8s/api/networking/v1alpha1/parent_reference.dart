// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1alpha1;

/// ParentReference describes a reference to a parent object.
class ParentReference {
  /// Default constructor.
  const ParentReference({
    this.group,
    this.name,
    this.namespace,
    this.resource,
    this.uid,
  });

  /// Creates a [ParentReference] from JSON data.
  factory ParentReference.fromJson(Map<String, dynamic> json) {
    final tempGroupJson = json['group'];
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];
    final tempResourceJson = json['resource'];
    final tempUidJson = json['uid'];

    final String? tempGroup = tempGroupJson;
    final String? tempName = tempNameJson;
    final String? tempNamespace = tempNamespaceJson;
    final String? tempResource = tempResourceJson;
    final String? tempUid = tempUidJson;

    return ParentReference(
      group: tempGroup,
      name: tempName,
      namespace: tempNamespace,
      resource: tempResource,
      uid: tempUid,
    );
  }

  /// Group is the group of the object being referenced.
  final String? group;

  /// Name is the name of the object being referenced.
  final String? name;

  /// Namespace is the namespace of the object being referenced.
  final String? namespace;

  /// Resource is the resource of the object being referenced.
  final String? resource;

  /// UID is the uid of the object being referenced.
  final String? uid;

  /// Converts a [ParentReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempGroup = group;
    final tempName = name;
    final tempNamespace = namespace;
    final tempResource = resource;
    final tempUid = uid;

    if (tempGroup != null) {
      jsonData['group'] = tempGroup;
    }

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempNamespace != null) {
      jsonData['namespace'] = tempNamespace;
    }

    if (tempResource != null) {
      jsonData['resource'] = tempResource;
    }

    if (tempUid != null) {
      jsonData['uid'] = tempUid;
    }

    return jsonData;
  }
}
