
/// ResourceClassParametersReference contains enough information to let you locate the parameters for a ResourceClass.
class ResourceClassParametersReference {
  /// The main constructor.
  const ResourceClassParametersReference({
    this.apiGroup,
    required this.kind,
    required this.name,
    this.namespace,
  });

  /// Creates a ResourceClassParametersReference from JSON data.
  ResourceClassParametersReference.fromJson(Map<String, dynamic> json)
      : this(
          apiGroup: json['apiGroup'],
          kind: json['kind'],
          name: json['name'],
          namespace: json['namespace'],
        );

  /// Creates a list of ResourceClassParametersReference from JSON data.
  static List<ResourceClassParametersReference> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClassParametersReference.fromJson(e)).toList();
  }

  /// Converts a ResourceClassParametersReference instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiGroup != null) { jsonData['apiGroup'] = apiGroup!; }
    jsonData['kind'] = kind;
    jsonData['name'] = name;
    if(namespace != null) { jsonData['namespace'] = namespace!; }
    

    return jsonData;
  }


  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final String? apiGroup;

  /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata.
  final String kind;

  /// Name is the name of resource being referenced.
  final String name;

  /// Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources.
  final String? namespace;
}
