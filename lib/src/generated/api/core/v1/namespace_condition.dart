/// NamespaceCondition contains details about state of namespace.
class NamespaceCondition {
  /// The main constructor.
  const NamespaceCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a NamespaceCondition from JSON data.
  NamespaceCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of NamespaceCondition from JSON data.
  static List<NamespaceCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NamespaceCondition.fromJson(e)).toList();
  }

  /// Converts a NamespaceCondition instance to JSON data.
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

  ///
  final DateTime? lastTransitionTime;

  ///
  final String? message;

  ///
  final String? reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of namespace controller condition.
  final String type;
}
