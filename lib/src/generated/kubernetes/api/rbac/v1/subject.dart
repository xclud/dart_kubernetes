
/// Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference, or a value for non-objects such as user and group names.
class Subject {
  /// The main constructor.
  const Subject({
    this.apiGroup,
    required this.kind,
    required this.name,
    this.namespace,
  });

  /// Creates a Subject from JSON data.
  Subject.fromJson(Map<String, dynamic> json)
      : this(
          apiGroup: json['apiGroup'],
          kind: json['kind'],
          name: json['name'],
          namespace: json['namespace'],
        );

  /// Creates a list of Subject from JSON data.
  static List<Subject> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Subject.fromJson(e)).toList();
  }

  /// Converts a Subject instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiGroup != null) { jsonData['apiGroup'] = apiGroup!; }
    jsonData['kind'] = kind;
    jsonData['name'] = name;
    if(namespace != null) { jsonData['namespace'] = namespace!; }
    

    return jsonData;
  }


  /// APIGroup holds the API group of the referenced subject. Defaults to "" for ServiceAccount subjects. Defaults to "rbac.authorization.k8s.io" for User and Group subjects.
  final String? apiGroup;

  /// Kind of object being referenced. Values defined by this API group are "User", "Group", and "ServiceAccount". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
  final String kind;

  /// Name of the object being referenced.
  final String name;

  /// Namespace of the referenced object.  If the object kind is non-namespace, such as "User" or "Group", and this value is not empty the Authorizer should report an error.
  final String? namespace;
}
