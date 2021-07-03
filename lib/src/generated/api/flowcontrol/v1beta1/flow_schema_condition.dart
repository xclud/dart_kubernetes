/// FlowSchemaCondition describes conditions for a FlowSchema.
class FlowSchemaCondition {
  /// The main constructor.
  const FlowSchemaCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  /// Creates a FlowSchemaCondition from JSON data.
  FlowSchemaCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of FlowSchemaCondition from JSON data.
  static List<FlowSchemaCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => FlowSchemaCondition.fromJson(e)).toList();
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
