// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// PodReadinessGate contains the reference to a pod condition.
class PodReadinessGate {
  /// Default constructor.
  const PodReadinessGate({
    required this.conditionType,
  });

  /// Creates a [PodReadinessGate] from JSON data.
  factory PodReadinessGate.fromJson(Map<String, dynamic> json) {
    final tempConditionTypeJson = json['conditionType'];

    final String tempConditionType = tempConditionTypeJson;

    return PodReadinessGate(
      conditionType: tempConditionType,
    );
  }

  /// ConditionType refers to a condition in the pod's condition list with matching type.
  final String conditionType;

  /// Converts a [PodReadinessGate] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConditionType = conditionType;

    jsonData['conditionType'] = tempConditionType;

    return jsonData;
  }
}
