/// PodFailurePolicyOnPodConditionsPattern describes a pattern for matching an actual pod condition type.
class PodFailurePolicyOnPodConditionsPattern {
  /// The main constructor.
  const PodFailurePolicyOnPodConditionsPattern({
    required this.status,
    required this.type,
  });

  /// Creates a PodFailurePolicyOnPodConditionsPattern from JSON data.
  PodFailurePolicyOnPodConditionsPattern.fromJson(Map<String, dynamic> json)
      : this(
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of PodFailurePolicyOnPodConditionsPattern from JSON data.
  static List<PodFailurePolicyOnPodConditionsPattern> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => PodFailurePolicyOnPodConditionsPattern.fromJson(e))
        .toList();
  }

  /// Converts a PodFailurePolicyOnPodConditionsPattern instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['status'] = status;
    jsonData['type'] = type;

    return jsonData;
  }

  /// Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True.
  final String status;

  /// Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type.
  final String type;
}
