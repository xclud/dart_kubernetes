// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_kube__aggregator_pkg_apis_apiregistration_v1.dart';

/// APIServiceCondition describes the state of an APIService at a particular point.
class APIServiceCondition {
  /// Default constructor.
  const APIServiceCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a [APIServiceCondition] from JSON data.
  factory APIServiceCondition.fromJson(Map<String, dynamic> json) {
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

    return APIServiceCondition(
      lastTransitionTime: tempLastTransitionTime,
      message: tempMessage,
      reason: tempReason,
      status: tempStatus,
      type: tempType,
    );
  }

  /// Last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// Human-readable message indicating details about last transition.
  final String? message;

  /// Unique, one-word, CamelCase reason for the condition's last transition.
  final String? reason;

  /// Status is the status of the condition. Can be True, False, Unknown.
  final String status;

  /// Type is the type of the condition.
  final String type;

  /// Converts a [APIServiceCondition] instance to JSON data.
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
