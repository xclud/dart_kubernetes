/// HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain point.
class HorizontalPodAutoscalerCondition {
  /// The main constructor.
  const HorizontalPodAutoscalerCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a HorizontalPodAutoscalerCondition from JSON data.
  HorizontalPodAutoscalerCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of HorizontalPodAutoscalerCondition from JSON data.
  static List<HorizontalPodAutoscalerCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => HorizontalPodAutoscalerCondition.fromJson(e))
        .toList();
  }

  /// Converts a HorizontalPodAutoscalerCondition instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (lastTransitionTime != null) {
      jsonData['lastTransitionTime'] = lastTransitionTime!.toIso8601String();
    }
    if (message != null) {
      jsonData['message'] = message!;
    }
    if (reason != null) {
      jsonData['reason'] = reason!;
    }
    jsonData['status'] = status;
    jsonData['type'] = type;

    return jsonData;
  }

  /// LastTransitionTime is the last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// Message is a human-readable explanation containing details about the transition.
  final String? message;

  /// Reason is the reason for the condition's last transition.
  final String? reason;

  /// Status is the status of the condition (True, False, Unknown).
  final String status;

  /// Type describes the current condition.
  final String type;
}
