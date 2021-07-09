/// APIServiceCondition describes the state of an APIService at a particular point.
class APIServiceCondition {
  /// The main constructor.
  const APIServiceCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a APIServiceCondition from JSON data.
  APIServiceCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of APIServiceCondition from JSON data.
  static List<APIServiceCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => APIServiceCondition.fromJson(e)).toList();
  }

  /// Last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// Human-readable message indicating details about last transition.
  final String? message;

  /// Unique, one-word, CamelCase reason for the condition's last transition.
  final String? reason;

  /// Status is the status of the condition. Can be True, False, Unknown.
  final String status;

  /// Type is the type of the condition.
  final String type;
}
