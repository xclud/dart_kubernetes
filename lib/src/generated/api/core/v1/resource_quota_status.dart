/// ResourceQuotaStatus defines the enforced hard limits and observed use.
class ResourceQuotaStatus {
  /// The main constructor.
  const ResourceQuotaStatus({
    this.hard,
    this.used,
  });

  /// Creates a ResourceQuotaStatus from JSON data.
  ResourceQuotaStatus.fromJson(Map<String, dynamic> json)
      : this(
          hard: json['hard'] != null
              ? Map<String, String>.from(json['hard'])
              : null,
          used: json['used'] != null
              ? Map<String, String>.from(json['used'])
              : null,
        );

  /// Creates a list of ResourceQuotaStatus from JSON data.
  static List<ResourceQuotaStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceQuotaStatus.fromJson(e)).toList();
  }

  /// Converts a ResourceQuotaStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (hard != null) {
      jsonData['hard'] = hard!;
    }
    if (used != null) {
      jsonData['used'] = used!;
    }

    return jsonData;
  }

  /// Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/.
  final Map<String, String>? hard;

  /// Used is the current observed total usage of the resource in the namespace.
  final Map<String, String>? used;
}
