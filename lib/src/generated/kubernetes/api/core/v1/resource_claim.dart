
/// ResourceClaim references one entry in PodSpec.ResourceClaims.
class ResourceClaim {
  /// The main constructor.
  const ResourceClaim({
    required this.name,
  });

  /// Creates a ResourceClaim from JSON data.
  ResourceClaim.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
        );

  /// Creates a list of ResourceClaim from JSON data.
  static List<ResourceClaim> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClaim.fromJson(e)).toList();
  }

  /// Converts a ResourceClaim instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;
    

    return jsonData;
  }


  /// Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.
  final String name;
}
