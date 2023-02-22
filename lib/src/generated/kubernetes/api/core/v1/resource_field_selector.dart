/// ResourceFieldSelector represents container resources (cpu, memory) and their output format.
class ResourceFieldSelector {
  /// The main constructor.
  const ResourceFieldSelector({
    this.containerName,
    this.divisor,
    required this.resource,
  });

  /// Creates a ResourceFieldSelector from JSON data.
  ResourceFieldSelector.fromJson(Map<String, dynamic> json)
      : this(
          containerName: json['containerName'],
          divisor: json['divisor'],
          resource: json['resource'],
        );

  /// Creates a list of ResourceFieldSelector from JSON data.
  static List<ResourceFieldSelector> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceFieldSelector.fromJson(e)).toList();
  }

  /// Converts a ResourceFieldSelector instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (containerName != null) {
      jsonData['containerName'] = containerName!;
    }
    if (divisor != null) {
      jsonData['divisor'] = divisor!;
    }
    jsonData['resource'] = resource;

    return jsonData;
  }

  /// Container name: required for volumes, optional for env vars.
  final String? containerName;

  /// Specifies the output format of the exposed resources, defaults to "1".
  final String? divisor;

  /// Required: resource to select.
  final String resource;
}
