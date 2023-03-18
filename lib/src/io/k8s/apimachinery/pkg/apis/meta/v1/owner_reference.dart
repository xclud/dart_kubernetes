// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// OwnerReference contains enough information to let you identify an owning object. An owning object must be in the same namespace as the dependent, or be cluster-scoped, so there is no namespace field.
class OwnerReference {
  /// Default constructor.
  const OwnerReference({
    required this.apiVersion,
    this.blockOwnerDeletion,
    this.controller,
    required this.kind,
    required this.name,
    required this.uid,
  });

  /// Creates a [OwnerReference] from JSON data.
  factory OwnerReference.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempBlockOwnerDeletionJson = json['blockOwnerDeletion'];
    final tempControllerJson = json['controller'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];
    final tempUidJson = json['uid'];

    final String tempApiVersion = tempApiVersionJson;
    final bool? tempBlockOwnerDeletion = tempBlockOwnerDeletionJson;
    final bool? tempController = tempControllerJson;
    final String tempKind = tempKindJson;
    final String tempName = tempNameJson;
    final String tempUid = tempUidJson;

    return OwnerReference(
      apiVersion: tempApiVersion,
      blockOwnerDeletion: tempBlockOwnerDeletion,
      controller: tempController,
      kind: tempKind,
      name: tempName,
      uid: tempUid,
    );
  }

  /// API version of the referent.
  final String apiVersion;

  /// If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
  final bool? blockOwnerDeletion;

  /// If true, this reference points to the managing controller.
  final bool? controller;

  /// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String kind;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names.
  final String name;

  /// UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids.
  final String uid;

  /// Converts a [OwnerReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempBlockOwnerDeletion = blockOwnerDeletion;
    final tempController = controller;
    final tempKind = kind;
    final tempName = name;
    final tempUid = uid;

    jsonData['apiVersion'] = tempApiVersion;

    if (tempBlockOwnerDeletion != null) {
      jsonData['blockOwnerDeletion'] = tempBlockOwnerDeletion;
    }

    if (tempController != null) {
      jsonData['controller'] = tempController;
    }

    jsonData['kind'] = tempKind;

    jsonData['name'] = tempName;

    jsonData['uid'] = tempUid;

    return jsonData;
  }
}
