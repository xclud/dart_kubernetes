/// CustomResourceDefinitionCondition contains details for the current condition of this pod.
class CustomResourceDefinitionCondition {
  /// The main constructor.
  const CustomResourceDefinitionCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a CustomResourceDefinitionCondition from JSON data.
  CustomResourceDefinitionCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of CustomResourceDefinitionCondition from JSON data.
  static List<CustomResourceDefinitionCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => CustomResourceDefinitionCondition.fromJson(e))
        .toList();
  }

  /// Converts a CustomResourceDefinitionCondition instance to JSON data.
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

  /// LastTransitionTime last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// Message is a human-readable message indicating details about last transition.
  final String? message;

  /// Reason is a unique, one-word, CamelCase reason for the condition's last transition.
  final String? reason;

  /// Status is the status of the condition. Can be True, False, Unknown.
  final String status;

  /// Type is the type of the condition. Types include Established, NamesAccepted and Terminating.
  final String type;
}
