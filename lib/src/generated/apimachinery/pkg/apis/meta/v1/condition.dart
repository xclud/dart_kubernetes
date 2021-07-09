/// Condition contains details for one aspect of the current state of this API Resource.
class Condition {
  /// The main constructor.
  const Condition({
    required this.lastTransitionTime,
    required this.message,
    this.observedGeneration,
    required this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a Condition from JSON data.
  Condition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: DateTime.tryParse(json['lastTransitionTime'])!,
          message: json['message'],
          observedGeneration: json['observedGeneration'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of Condition from JSON data.
  static List<Condition> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Condition.fromJson(e)).toList();
  }

  /// Converts a Condition instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['lastTransitionTime'] = lastTransitionTime.toIso8601String();
    jsonData['message'] = message;
    if (observedGeneration != null) {
      jsonData['observedGeneration'] = observedGeneration!;
    }
    jsonData['reason'] = reason;
    jsonData['status'] = status;
    jsonData['type'] = type;

    return jsonData;
  }

  /// LastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
  final DateTime lastTransitionTime;

  /// Message is a human readable message indicating details about the transition. This may be an empty string.
  final String message;

  /// ObservedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  final int? observedGeneration;

  /// Reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
  final String reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of condition in CamelCase or in foo.example.com/CamelCase.
  final String type;
}
