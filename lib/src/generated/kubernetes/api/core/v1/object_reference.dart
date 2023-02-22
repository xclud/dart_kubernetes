/// ObjectReference contains enough information to let you inspect or modify the referred object.
class ObjectReference {
  /// The main constructor.
  const ObjectReference({
    this.apiVersion,
    this.fieldPath,
    this.kind,
    this.name,
    this.namespace,
    this.resourceVersion,
    this.uid,
  });

  /// Creates a ObjectReference from JSON data.
  ObjectReference.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          fieldPath: json['fieldPath'],
          kind: json['kind'],
          name: json['name'],
          namespace: json['namespace'],
          resourceVersion: json['resourceVersion'],
          uid: json['uid'],
        );

  /// Creates a list of ObjectReference from JSON data.
  static List<ObjectReference> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ObjectReference.fromJson(e)).toList();
  }

  /// Converts a ObjectReference instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (fieldPath != null) {
      jsonData['fieldPath'] = fieldPath!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (name != null) {
      jsonData['name'] = name!;
    }
    if (namespace != null) {
      jsonData['namespace'] = namespace!;
    }
    if (resourceVersion != null) {
      jsonData['resourceVersion'] = resourceVersion!;
    }
    if (uid != null) {
      jsonData['uid'] = uid!;
    }

    return jsonData;
  }

  /// API version of the referent.
  final String? apiVersion;

  /// If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.
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
}
