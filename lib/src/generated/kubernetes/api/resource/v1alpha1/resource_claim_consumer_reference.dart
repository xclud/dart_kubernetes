
/// ResourceClaimConsumerReference contains enough information to let you locate the consumer of a ResourceClaim. The user must be a resource in the same namespace as the ResourceClaim.
class ResourceClaimConsumerReference {
  /// The main constructor.
  const ResourceClaimConsumerReference({
    this.apiGroup,
    required this.name,
    required this.resource,
    required this.uid,
  });

  /// Creates a ResourceClaimConsumerReference from JSON data.
  ResourceClaimConsumerReference.fromJson(Map<String, dynamic> json)
      : this(
          apiGroup: json['apiGroup'],
          name: json['name'],
          resource: json['resource'],
          uid: json['uid'],
        );

  /// Creates a list of ResourceClaimConsumerReference from JSON data.
  static List<ResourceClaimConsumerReference> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClaimConsumerReference.fromJson(e)).toList();
  }

  /// Converts a ResourceClaimConsumerReference instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiGroup != null) { jsonData['apiGroup'] = apiGroup!; }
    jsonData['name'] = name;
    jsonData['resource'] = resource;
    jsonData['uid'] = uid;
    

    return jsonData;
  }


  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  final String? apiGroup;

  /// Name is the name of resource being referenced.
  final String name;

  /// Resource is the type of resource being referenced, for example "pods".
  final String resource;

  /// UID identifies exactly one incarnation of the resource.
  final String uid;
}
