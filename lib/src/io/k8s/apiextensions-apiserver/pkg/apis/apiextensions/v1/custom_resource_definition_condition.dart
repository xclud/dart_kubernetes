// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apiextensions__apiserver.pkg.apis.apiextensions.v1;

/// CustomResourceDefinitionCondition contains details for the current condition of this pod.
class CustomResourceDefinitionCondition {
  /// Default constructor.
  const CustomResourceDefinitionCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a [CustomResourceDefinitionCondition] from JSON data.
  factory CustomResourceDefinitionCondition.fromJson(
      Map<String, dynamic> json) {
    final tempLastTransitionTimeJson = json['lastTransitionTime'];
    final tempMessageJson = json['message'];
    final tempReasonJson = json['reason'];
    final tempStatusJson = json['status'];
    final tempTypeJson = json['type'];

    final DateTime? tempLastTransitionTime = tempLastTransitionTimeJson != null
        ? DateTime.tryParse(tempLastTransitionTimeJson)
        : null;
    final String? tempMessage = tempMessageJson;
    final String? tempReason = tempReasonJson;
    final String tempStatus = tempStatusJson;
    final String tempType = tempTypeJson;

    return CustomResourceDefinitionCondition(
      lastTransitionTime: tempLastTransitionTime,
      message: tempMessage,
      reason: tempReason,
      status: tempStatus,
      type: tempType,
    );
  }

  /// lastTransitionTime last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// message is a human-readable message indicating details about last transition.
  final String? message;

  /// reason is a unique, one-word, CamelCase reason for the condition's last transition.
  final String? reason;

  /// status is the status of the condition. Can be True, False, Unknown.
  final String status;

  /// type is the type of the condition. Types include Established, NamesAccepted and Terminating.
  final String type;

  /// Converts a [CustomResourceDefinitionCondition] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLastTransitionTime = lastTransitionTime;
    final tempMessage = message;
    final tempReason = reason;
    final tempStatus = status;
    final tempType = type;

    if (tempLastTransitionTime != null) {
      jsonData['lastTransitionTime'] = tempLastTransitionTime;
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
