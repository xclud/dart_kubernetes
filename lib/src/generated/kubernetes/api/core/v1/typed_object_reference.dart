
/// 
class TypedObjectReference {
  /// The main constructor.
  const TypedObjectReference({
    this.apiGroup,
    required this.kind,
    required this.name,
    this.namespace,
  });

  /// Creates a TypedObjectReference from JSON data.
  TypedObjectReference.fromJson(Map<String, dynamic> json)
      : this(
          apiGroup: json['apiGroup'],
          kind: json['kind'],
          name: json['name'],
          namespace: json['namespace'],
        );

  /// Creates a list of TypedObjectReference from JSON data.
  static List<TypedObjectReference> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TypedObjectReference.fromJson(e)).toList();
  }

  /// Converts a TypedObjectReference instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiGroup != null) { jsonData['apiGroup'] = apiGroup!; }
    jsonData['kind'] = kind;
    jsonData['name'] = name;
    if(namespace != null) { jsonData['namespace'] = namespace!; }
    

    return jsonData;
  }


  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final String? apiGroup;

  /// Kind is the type of resource being referenced.
  final String kind;

  /// Name is the name of resource being referenced.
  final String name;

  /// Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
  final String? namespace;
}
