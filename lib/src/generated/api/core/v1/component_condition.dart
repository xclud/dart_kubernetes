/// Information about the condition of a component.
class ComponentCondition {
  /// The main constructor.
  const ComponentCondition({
    this.error,
    this.message,
    required this.status,
    required this.type,
  });

  /// Creates a ComponentCondition from JSON data.
  ComponentCondition.fromJson(Map<String, dynamic> json)
      : this(
          error: json['error'],
          message: json['message'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of ComponentCondition from JSON data.
  static List<ComponentCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ComponentCondition.fromJson(e)).toList();
  }

  /// Condition error code for a component. For example, a health check error code.
  final String? error;

  /// Message about the condition for a component. For example, information about a health check.
  final String? message;

  /// Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
  final String status;

  /// Type of condition for a component. Valid value: "Healthy"
  final String type;
}
