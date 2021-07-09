import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/priority_level_configuration_condition.dart';

/// PriorityLevelConfigurationStatus represents the current state of a "request-priority".
class PriorityLevelConfigurationStatus {
  /// The main constructor.
  const PriorityLevelConfigurationStatus({
    this.conditions,
  });

  /// Creates a PriorityLevelConfigurationStatus from JSON data.
  PriorityLevelConfigurationStatus.fromJson(Map<String, dynamic> json)
      : this(
          conditions: json['conditions'] != null
              ? PriorityLevelConfigurationCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of PriorityLevelConfigurationStatus from JSON data.
  static List<PriorityLevelConfigurationStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => PriorityLevelConfigurationStatus.fromJson(e))
        .toList();
  }

  /// Converts a PriorityLevelConfigurationStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// `conditions` is the current state of "request-priority".
  final List<PriorityLevelConfigurationCondition>? conditions;
}
