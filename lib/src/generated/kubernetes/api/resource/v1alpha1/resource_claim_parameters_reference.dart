
/// ResourceClaimParametersReference contains enough information to let you locate the parameters for a ResourceClaim. The object must be in the same namespace as the ResourceClaim.
class ResourceClaimParametersReference {
  /// The main constructor.
  const ResourceClaimParametersReference({
    this.apiGroup,
    required this.kind,
    required this.name,
  });

  /// Creates a ResourceClaimParametersReference from JSON data.
  ResourceClaimParametersReference.fromJson(Map<String, dynamic> json)
      : this(
          apiGroup: json['apiGroup'],
          kind: json['kind'],
          name: json['name'],
        );

  /// Creates a list of ResourceClaimParametersReference from JSON data.
  static List<ResourceClaimParametersReference> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClaimParametersReference.fromJson(e)).toList();
  }

  /// Converts a ResourceClaimParametersReference instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiGroup != null) { jsonData['apiGroup'] = apiGroup!; }
    jsonData['kind'] = kind;
    jsonData['name'] = name;
    

    return jsonData;
  }


  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final String? apiGroup;

  /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata, for example "ConfigMap".
  final String kind;

  /// Name is the name of resource being referenced.
  final String name;
}
