/// OwnerReference contains enough information to let you identify an owning object. An owning object must be in the same namespace as the dependent, or be cluster-scoped, so there is no namespace field.
class OwnerReference {
  /// The main constructor.
  const OwnerReference({
    required this.apiVersion,
    this.blockOwnerDeletion,
    this.controller,
    required this.kind,
    required this.name,
    required this.uid,
  });

  /// Creates a OwnerReference from JSON data.
  OwnerReference.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          blockOwnerDeletion: json['blockOwnerDeletion'],
          controller: json['controller'],
          kind: json['kind'],
          name: json['name'],
          uid: json['uid'],
        );

  /// Creates a list of OwnerReference from JSON data.
  static List<OwnerReference> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => OwnerReference.fromJson(e)).toList();
  }

  /// Converts a OwnerReference instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['apiVersion'] = apiVersion;
    if (blockOwnerDeletion != null) {
      jsonData['blockOwnerDeletion'] = blockOwnerDeletion!;
    }
    if (controller != null) {
      jsonData['controller'] = controller!;
    }
    jsonData['kind'] = kind;
    jsonData['name'] = name;
    jsonData['uid'] = uid;

    return jsonData;
  }

  /// API version of the referent.
  final String apiVersion;

  /// If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
  final bool? blockOwnerDeletion;

  /// If true, this reference points to the managing controller.
  final bool? controller;

  /// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String kind;

  /// Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names.
  final String name;

  /// UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids.
  final String uid;
}
