/// NodeCondition contains condition information for a node.
class NodeCondition {
  /// The main constructor.
  const NodeCondition({
    this.lastHeartbeatTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a NodeCondition from JSON data.
  NodeCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastHeartbeatTime: json['lastHeartbeatTime'] != null
              ? DateTime.tryParse(json['lastHeartbeatTime'])
              : null,
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of NodeCondition from JSON data.
  static List<NodeCondition> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeCondition.fromJson(e)).toList();
  }

  /// Last time we got an update on a given condition.
  final DateTime? lastHeartbeatTime;

  /// Last time the condition transit from one status to another.
  final DateTime? lastTransitionTime;

  /// Human readable message indicating details about last transition.
  final String? message;

  /// (brief) reason for the condition's last transition.
  final String? reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of node condition.
  final String type;
}
