// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.batch.v1;

/// PodFailurePolicyOnPodConditionsPattern describes a pattern for matching an actual pod condition type.
class PodFailurePolicyOnPodConditionsPattern {
  /// Default constructor.
  const PodFailurePolicyOnPodConditionsPattern({
    required this.status,
    required this.type,
  });

  /// Creates a [PodFailurePolicyOnPodConditionsPattern] from JSON data.
  factory PodFailurePolicyOnPodConditionsPattern.fromJson(
      Map<String, dynamic> json) {
    final tempStatusJson = json['status'];
    final tempTypeJson = json['type'];

    final String tempStatus = tempStatusJson;
    final String tempType = tempTypeJson;

    return PodFailurePolicyOnPodConditionsPattern(
      status: tempStatus,
      type: tempType,
    );
  }

  /// Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True.
  final String status;

  /// Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type.
  final String type;

  /// Converts a [PodFailurePolicyOnPodConditionsPattern] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempStatus = status;
    final tempType = type;

    jsonData['status'] = tempStatus;

    jsonData['type'] = tempType;

    return jsonData;
  }
}
