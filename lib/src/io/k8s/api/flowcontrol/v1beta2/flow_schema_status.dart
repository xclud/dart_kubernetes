// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../flowcontrol_v1beta2.dart';

/// FlowSchemaStatus represents the current state of a FlowSchema.
class FlowSchemaStatus {
  /// Default constructor.
  const FlowSchemaStatus({
    this.conditions,
  });

  /// Creates a [FlowSchemaStatus] from JSON data.
  factory FlowSchemaStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];

    final List<FlowSchemaCondition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => FlowSchemaCondition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return FlowSchemaStatus(
      conditions: tempConditions,
    );
  }

  /// `conditions` is a list of the current states of FlowSchema.
  final List<FlowSchemaCondition>? conditions;

  /// Converts a [FlowSchemaStatus] instance to JSON data.
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
