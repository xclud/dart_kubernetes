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

  /// lastTransitionTime last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// message is a human-readable message indicating details about last transition.
  final String? message;

  /// reason is a unique, one-word, CamelCase reason for the condition's last transition.
  final String? reason;

  /// status is the status of the condition. Can be True, False, Unknown.
  final String status;

  /// type is the type of the condition. Types include Established, NamesAccepted and Terminating.
  final String type;
}
