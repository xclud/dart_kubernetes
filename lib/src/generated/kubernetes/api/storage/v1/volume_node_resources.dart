
/// VolumeNodeResources is a set of resource limits for scheduling of volumes.
class VolumeNodeResources {
  /// The main constructor.
  const VolumeNodeResources({
    this.count,
  });

  /// Creates a VolumeNodeResources from JSON data.
  VolumeNodeResources.fromJson(Map<String, dynamic> json)
      : this(
          count: json['count'],
        );

  /// Creates a list of VolumeNodeResources from JSON data.
  static List<VolumeNodeResources> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeNodeResources.fromJson(e)).toList();
  }

  /// Converts a VolumeNodeResources instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(count != null) { jsonData['count'] = count!; }
    

    return jsonData;
  }


  /// Count indicates the maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is not specified, then the supported number of volumes on this node is unbounded.
  final int? count;
}
