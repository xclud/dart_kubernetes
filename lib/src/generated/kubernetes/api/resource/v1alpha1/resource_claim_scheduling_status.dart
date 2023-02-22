
/// ResourceClaimSchedulingStatus contains information about one particular ResourceClaim with "WaitForFirstConsumer" allocation mode.
class ResourceClaimSchedulingStatus {
  /// The main constructor.
  const ResourceClaimSchedulingStatus({
    this.name,
    this.unsuitableNodes,
  });

  /// Creates a ResourceClaimSchedulingStatus from JSON data.
  ResourceClaimSchedulingStatus.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          unsuitableNodes: json['unsuitableNodes'] != null ? List<String>.from(json['unsuitableNodes']) : null,
        );

  /// Creates a list of ResourceClaimSchedulingStatus from JSON data.
  static List<ResourceClaimSchedulingStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClaimSchedulingStatus.fromJson(e)).toList();
  }

  /// Converts a ResourceClaimSchedulingStatus instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(name != null) { jsonData['name'] = name!; }
    if(unsuitableNodes != null) { jsonData['unsuitableNodes'] = unsuitableNodes!; }
    

    return jsonData;
  }


  /// Name matches the pod.spec.resourceClaims[*].Name field.
  final String? name;

  /// UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
/// 
/// The size of this field is limited to 128, the same as for PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
  final List<String>? unsuitableNodes;
}
