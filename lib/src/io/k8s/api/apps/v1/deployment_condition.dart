// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// DeploymentCondition describes the state of a deployment at a certain point.
class DeploymentCondition {
  /// Default constructor.
  const DeploymentCondition({
    this.lastTransitionTime,
    this.lastUpdateTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a [DeploymentCondition] from JSON data.
  factory DeploymentCondition.fromJson(Map<String, dynamic> json) {
    final tempLastTransitionTimeJson = json['lastTransitionTime'];
    final tempLastUpdateTimeJson = json['lastUpdateTime'];
    final tempMessageJson = json['message'];
    final tempReasonJson = json['reason'];
    final tempStatusJson = json['status'];
    final tempTypeJson = json['type'];

    final tempLastTransitionTime = tempLastTransitionTimeJson != null
        ? DateTime.tryParse(tempLastTransitionTimeJson)
        : null;
    final tempLastUpdateTime = tempLastUpdateTimeJson != null
        ? DateTime.tryParse(tempLastUpdateTimeJson)
        : null;
    final tempMessage = tempMessageJson;
    final tempReason = tempReasonJson;
    final tempStatus = tempStatusJson;
    final tempType = tempTypeJson;

    return DeploymentCondition(
      lastTransitionTime: tempLastTransitionTime,
      lastUpdateTime: tempLastUpdateTime,
      message: tempMessage,
      reason: tempReason,
      status: tempStatus,
      type: tempType,
    );
  }

  /// Last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// The last time this condition was updated.
  final DateTime? lastUpdateTime;

  /// A human readable message indicating details about the transition.
  final String? message;

  /// The reason for the condition's last transition.
  final String? reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of deployment condition.
  final String type;

  /// Converts a [DeploymentCondition] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLastTransitionTime = lastTransitionTime;
    final tempLastUpdateTime = lastUpdateTime;
    final tempMessage = message;
    final tempReason = reason;
    final tempStatus = status;
    final tempType = type;

    if (tempLastTransitionTime != null) {
      jsonData['lastTransitionTime'] = tempLastTransitionTime;
    }

    if (tempLastUpdateTime != null) {
      jsonData['lastUpdateTime'] = tempLastUpdateTime;
    }

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    jsonData['status'] = tempStatus;

    jsonData['type'] = tempType;

    return jsonData;
  }
}
