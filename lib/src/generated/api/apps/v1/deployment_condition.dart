/// DeploymentCondition describes the state of a deployment at a certain point.
class DeploymentCondition {
  /// The main constructor.
  const DeploymentCondition({
    this.lastTransitionTime,
    this.lastUpdateTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a DeploymentCondition from JSON data.
  DeploymentCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          lastUpdateTime: json['lastUpdateTime'] != null
              ? DateTime.tryParse(json['lastUpdateTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of DeploymentCondition from JSON data.
  static List<DeploymentCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DeploymentCondition.fromJson(e)).toList();
  }

  /// Last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// The last time this condition was updated.
  final DateTime? lastUpdateTime;

  /// A human readable message indicating details about the transition.
  final String? message;

  /// The reason for the condition's last transition.
  final String? reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of deployment condition.
  final String type;
}
