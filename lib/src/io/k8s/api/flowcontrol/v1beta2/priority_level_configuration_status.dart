// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.flowcontrol.v1beta2;

/// PriorityLevelConfigurationStatus represents the current state of a "request-priority".
class PriorityLevelConfigurationStatus {
  /// Default constructor.
  const PriorityLevelConfigurationStatus({
    this.conditions,
  });

  /// Creates a [PriorityLevelConfigurationStatus] from JSON data.
  factory PriorityLevelConfigurationStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];

    final List<PriorityLevelConfigurationCondition>? tempConditions =
        tempConditionsJson != null
            ? List<dynamic>.from(tempConditionsJson)
                .map(
                  (e) => PriorityLevelConfigurationCondition.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    return PriorityLevelConfigurationStatus(
      conditions: tempConditions,
    );
  }

  /// `conditions` is the current state of "request-priority".
  final List<PriorityLevelConfigurationCondition>? conditions;

  /// Converts a [PriorityLevelConfigurationStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConditions = conditions;

    if (tempConditions != null) {
      jsonData['conditions'] =
          tempConditions.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
