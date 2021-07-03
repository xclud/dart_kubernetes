/// PodCondition contains details for the current condition of this pod.
class PodCondition {
  /// The main constructor.
  const PodCondition({
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a PodCondition from JSON data.
  PodCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastProbeTime: json['lastProbeTime'] != null
              ? DateTime.tryParse(json['lastProbeTime'])
              : null,
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of PodCondition from JSON data.
  static List<PodCondition> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodCondition.fromJson(e)).toList();
  }

  /// Last time we probed the condition.
  final DateTime? lastProbeTime;

  /// Last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// Human-readable message indicating details about last transition.
  final String? message;

  /// Unique, one-word, CamelCase reason for the condition's last transition.
  final String? reason;

  /// Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  final String status;

  /// Type is the type of the condition. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  final String type;
}
