// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// NodeCondition contains condition information for a node.
class NodeCondition {
  /// Default constructor.
  const NodeCondition({
    this.lastHeartbeatTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a [NodeCondition] from JSON data.
  factory NodeCondition.fromJson(Map<String, dynamic> json) {
    final tempLastHeartbeatTimeJson = json['lastHeartbeatTime'];
    final tempLastTransitionTimeJson = json['lastTransitionTime'];
    final tempMessageJson = json['message'];
    final tempReasonJson = json['reason'];
    final tempStatusJson = json['status'];
    final tempTypeJson = json['type'];

    final DateTime? tempLastHeartbeatTime = tempLastHeartbeatTimeJson != null
        ? DateTime.tryParse(tempLastHeartbeatTimeJson)
        : null;
    final DateTime? tempLastTransitionTime = tempLastTransitionTimeJson != null
        ? DateTime.tryParse(tempLastTransitionTimeJson)
        : null;
    final String? tempMessage = tempMessageJson;
    final String? tempReason = tempReasonJson;
    final String tempStatus = tempStatusJson;
    final String tempType = tempTypeJson;

    return NodeCondition(
      lastHeartbeatTime: tempLastHeartbeatTime,
      lastTransitionTime: tempLastTransitionTime,
      message: tempMessage,
      reason: tempReason,
      status: tempStatus,
      type: tempType,
    );
  }

  /// Last time we got an update on a given condition.
  final DateTime? lastHeartbeatTime;

  /// Last time the condition transit from one status to another.
  final DateTime? lastTransitionTime;

  /// Human readable message indicating details about last transition.
  final String? message;

  /// (brief) reason for the condition's last transition.
  final String? reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of node condition.
  final String type;

  /// Converts a [NodeCondition] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLastHeartbeatTime = lastHeartbeatTime;
    final tempLastTransitionTime = lastTransitionTime;
    final tempMessage = message;
    final tempReason = reason;
    final tempStatus = status;
    final tempType = type;

    if (tempLastHeartbeatTime != null) {
      jsonData['lastHeartbeatTime'] = tempLastHeartbeatTime;
    }

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
