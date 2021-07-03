/// ReplicaSetCondition describes the state of a replica set at a certain point.
class ReplicaSetCondition {
  /// The main constructor.
  const ReplicaSetCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a ReplicaSetCondition from JSON data.
  ReplicaSetCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of ReplicaSetCondition from JSON data.
  static List<ReplicaSetCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ReplicaSetCondition.fromJson(e)).toList();
  }

  /// The last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// A human readable message indicating details about the transition.
  final String? message;

  /// The reason for the condition's last transition.
  final String? reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of replica set condition.
  final String type;
}
