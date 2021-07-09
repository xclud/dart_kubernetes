/// Describes the state of the storageVersion at a certain point.
class StorageVersionCondition {
  /// The main constructor.
  const StorageVersionCondition({
    this.lastTransitionTime,
    this.message,
    this.observedGeneration,
    required this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a StorageVersionCondition from JSON data.
  StorageVersionCondition.fromJson(Map<String, dynamic> json)
      : this(
          lastTransitionTime: json['lastTransitionTime'] != null
              ? DateTime.tryParse(json['lastTransitionTime'])
              : null,
          message: json['message'],
          observedGeneration: json['observedGeneration'],
          reason: json['reason'],
          status: json['status'],
          type: json['type'],
        );

  /// Creates a list of StorageVersionCondition from JSON data.
  static List<StorageVersionCondition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StorageVersionCondition.fromJson(e)).toList();
  }

  /// Converts a StorageVersionCondition instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (lastTransitionTime != null) {
      jsonData['lastTransitionTime'] = lastTransitionTime!.toIso8601String();
    }
    if (message != null) {
      jsonData['message'] = message!;
    }
    if (observedGeneration != null) {
      jsonData['observedGeneration'] = observedGeneration!;
    }
    jsonData['reason'] = reason;
    jsonData['status'] = status;
    jsonData['type'] = type;

    return jsonData;
  }

  /// Last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// A human readable message indicating details about the transition.
  final String? message;

  /// If set, this represents the .metadata.generation that the condition was set based upon.
  final int? observedGeneration;

  /// The reason for the condition's last transition.
  final String reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of the condition.
  final String type;
}
