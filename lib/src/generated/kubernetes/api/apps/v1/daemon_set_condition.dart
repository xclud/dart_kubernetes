
/// DaemonSetCondition describes the state of a DaemonSet at a certain point.
class DaemonSetCondition {
  /// The main constructor.
  const DaemonSetCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a DaemonSetCondition from JSON data.
  DaemonSetCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null ? DateTime.tryParse(json['lastTransitionTime']): null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of DaemonSetCondition from JSON data.
  static List<DaemonSetCondition> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DaemonSetCondition.fromJson(e)).toList();
  }

  /// Converts a DaemonSetCondition instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(lastTransitionTime != null) { jsonData['lastTransitionTime'] = lastTransitionTime!.toIso8601String(); }
    if(message != null) { jsonData['message'] = message!; }
    if(reason != null) { jsonData['reason'] = reason!; }
    jsonData['status'] = status;
    jsonData['type'] = type;
    

    return jsonData;
  }


  /// Last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// A human readable message indicating details about the transition.
  final String? message;

  /// The reason for the condition's last transition.
  final String? reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of DaemonSet condition.
  final String type;
}
