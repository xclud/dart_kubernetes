// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ObjectReference contains enough information to let you inspect or modify the referred object.
class ObjectReference {
  /// Default constructor.
  const ObjectReference({
    this.apiVersion,
    this.fieldPath,
    this.kind,
    this.name,
    this.namespace,
    this.resourceVersion,
    this.uid,
  });

  /// Creates a [ObjectReference] from JSON data.
  factory ObjectReference.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempFieldPathJson = json['fieldPath'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];
    final tempResourceVersionJson = json['resourceVersion'];
    final tempUidJson = json['uid'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempFieldPath = tempFieldPathJson;
    final String? tempKind = tempKindJson;
    final String? tempName = tempNameJson;
    final String? tempNamespace = tempNamespaceJson;
    final String? tempResourceVersion = tempResourceVersionJson;
    final String? tempUid = tempUidJson;

    return ObjectReference(
      apiVersion: tempApiVersion,
      fieldPath: tempFieldPath,
      kind: tempKind,
      name: tempName,
      namespace: tempNamespace,
      resourceVersion: tempResourceVersion,
      uid: tempUid,
    );
  }

  /// API version of the referent.
  final String? apiVersion;

  /// If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers\[2\]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers\[2\]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.
  final String? fieldPath;

  /// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/.
  final String? namespace;

  /// Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency.
  final String? resourceVersion;

  /// UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids.
  final String? uid;

  /// Converts a [ObjectReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempFieldPath = fieldPath;
    final tempKind = kind;
    final tempName = name;
    final tempNamespace = namespace;
    final tempResourceVersion = resourceVersion;
    final tempUid = uid;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempFieldPath != null) {
      jsonData['fieldPath'] = tempFieldPath;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempNamespace != null) {
      jsonData['namespace'] = tempNamespace;
    }

    if (tempResourceVersion != null) {
      jsonData['resourceVersion'] = tempResourceVersion;
    }

    if (tempUid != null) {
      jsonData['uid'] = tempUid;
    }

    return jsonData;
  }
}
