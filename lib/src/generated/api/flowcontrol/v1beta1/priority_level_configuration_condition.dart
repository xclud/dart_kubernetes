/// PriorityLevelConfigurationCondition defines the condition of priority level.
class PriorityLevelConfigurationCondition {
  /// The main constructor.
  const PriorityLevelConfigurationCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  /// Creates a PriorityLevelConfigurationCondition from JSON data.
  PriorityLevelConfigurationCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of PriorityLevelConfigurationCondition from JSON data.
  static List<PriorityLevelConfigurationCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => PriorityLevelConfigurationCondition.fromJson(e))
        .toList();
  }

  /// `lastTransitionTime` is the last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// `message` is a human-readable message indicating details about last transition.
  final String? message;

  /// `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  final String? reason;

  /// `status` is the status of the condition. Can be True, False, Unknown. Required.
  final String? status;

  /// `type` is the type of the condition. Required.
  final String? type;
}
