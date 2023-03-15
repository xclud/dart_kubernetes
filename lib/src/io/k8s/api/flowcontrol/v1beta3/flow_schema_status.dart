// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.flowcontrol.v1beta3;

/// FlowSchemaStatus represents the current state of a FlowSchema.
class FlowSchemaStatus {
  /// Default constructor.
  const FlowSchemaStatus({
    this.conditions,
  });

  /// Creates a [FlowSchemaStatus] from JSON data.
  factory FlowSchemaStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];

    final tempConditions = tempConditionsJson;

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
      jsonData['conditions'] = tempConditions;
    }

    return jsonData;
  }
}
