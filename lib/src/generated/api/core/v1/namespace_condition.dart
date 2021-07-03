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
