// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../batch_v1.dart';

/// JobCondition describes current state of a job.
class JobCondition {
  /// Default constructor.
  const JobCondition({
    this.lastProbeTime,
    this.lastTransitionTime,
    this.message,
    this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a [JobCondition] from JSON data.
  factory JobCondition.fromJson(Map<String, dynamic> json) {
    final tempLastProbeTimeJson = json['lastProbeTime'];
    final tempLastTransitionTimeJson = json['lastTransitionTime'];
    final tempMessageJson = json['message'];
    final tempReasonJson = json['reason'];
    final tempStatusJson = json['status'];
    final tempTypeJson = json['type'];

    final DateTime? tempLastProbeTime = tempLastProbeTimeJson != null
        ? DateTime.tryParse(tempLastProbeTimeJson)
        : null;
    final DateTime? tempLastTransitionTime = tempLastTransitionTimeJson != null
        ? DateTime.tryParse(tempLastTransitionTimeJson)
        : null;
    final String? tempMessage = tempMessageJson;
    final String? tempReason = tempReasonJson;
    final String tempStatus = tempStatusJson;
    final String tempType = tempTypeJson;

    return JobCondition(
      lastProbeTime: tempLastProbeTime,
      lastTransitionTime: tempLastTransitionTime,
      message: tempMessage,
      reason: tempReason,
      status: tempStatus,
      type: tempType,
    );
  }

  /// Last time the condition was checked.
  final DateTime? lastProbeTime;

  /// Last time the condition transit from one status to another.
  final DateTime? lastTransitionTime;

  /// Human readable message indicating details about last transition.
  final String? message;

  /// (brief) reason for the condition's last transition.
  final String? reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of job condition, Complete or Failed.
  final String type;

  /// Converts a [JobCondition] instance to JSON data.
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
