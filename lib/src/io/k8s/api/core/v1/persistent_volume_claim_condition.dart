// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// PersistentVolumeClaimCondition contails details about state of pvc.
class PersistentVolumeClaimCondition {
  /// Default constructor.
  const PersistentVolumeClaimCondition({
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a [PersistentVolumeClaimCondition] from JSON data.
  factory PersistentVolumeClaimCondition.fromJson(Map<String, dynamic> json) {
    final tempLastProbeTimeJson = json['lastProbeTime'];
    final tempLastTransitionTimeJson = json['lastTransitionTime'];
    final tempMessageJson = json['message'];
    final tempReasonJson = json['reason'];
    final tempStatusJson = json['status'];
    final tempTypeJson = json['type'];

    final tempLastProbeTime = tempLastProbeTimeJson != null
        ? DateTime.tryParse(tempLastProbeTimeJson)
        : null;
    final tempLastTransitionTime = tempLastTransitionTimeJson != null
        ? DateTime.tryParse(tempLastTransitionTimeJson)
        : null;
    final tempMessage = tempMessageJson;
    final tempReason = tempReasonJson;
    final tempStatus = tempStatusJson;
    final tempType = tempTypeJson;

    return PersistentVolumeClaimCondition(
      lastProbeTime: tempLastProbeTime,
      lastTransitionTime: tempLastTransitionTime,
      message: tempMessage,
      reason: tempReason,
      status: tempStatus,
      type: tempType,
    );
  }

  /// lastProbeTime is the time we probed the condition.
  final DateTime? lastProbeTime;

  /// lastTransitionTime is the time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// message is the human-readable message indicating details about last transition.
  final String? message;

  /// reason is a unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports "ResizeStarted" that means the underlying persistent volume is being resized.
  final String? reason;

  /// Status.
  final String status;

  /// Type.
  final String type;

  /// Converts a [PersistentVolumeClaimCondition] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLastProbeTime = lastProbeTime;
    final tempLastTransitionTime = lastTransitionTime;
    final tempMessage = message;
    final tempReason = reason;
    final tempStatus = status;
    final tempType = type;

    if (tempLastProbeTime != null) {
      jsonData['lastProbeTime'] = tempLastProbeTime;
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
