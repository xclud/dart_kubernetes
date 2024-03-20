// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../apiserverinternal_v1alpha1.dart';

/// Describes the state of the storageVersion at a certain point.
class StorageVersionCondition {
  /// Default constructor.
  const StorageVersionCondition({
    this.lastTransitionTime,
    this.message,
    this.observedGeneration,
    required this.reason,
    required this.status,
    required this.type,
  });

  /// Creates a [StorageVersionCondition] from JSON data.
  factory StorageVersionCondition.fromJson(Map<String, dynamic> json) {
    final tempLastTransitionTimeJson = json['lastTransitionTime'];
    final tempMessageJson = json['message'];
    final tempObservedGenerationJson = json['observedGeneration'];
    final tempReasonJson = json['reason'];
    final tempStatusJson = json['status'];
    final tempTypeJson = json['type'];

    final DateTime? tempLastTransitionTime = tempLastTransitionTimeJson != null
        ? DateTime.tryParse(tempLastTransitionTimeJson)
        : null;
    final String? tempMessage = tempMessageJson;
    final int? tempObservedGeneration = tempObservedGenerationJson;
    final String tempReason = tempReasonJson;
    final String tempStatus = tempStatusJson;
    final String tempType = tempTypeJson;

    return StorageVersionCondition(
      lastTransitionTime: tempLastTransitionTime,
      message: tempMessage,
      observedGeneration: tempObservedGeneration,
      reason: tempReason,
      status: tempStatus,
      type: tempType,
    );
  }

  /// Last time the condition transitioned from one status to another.
  final DateTime? lastTransitionTime;

  /// A human readable message indicating details about the transition.
  final String? message;

  /// If set, this represents the .metadata.generation that the condition was set based upon.
  final int? observedGeneration;

  /// The reason for the condition's last transition.
  final String reason;

  /// Status of the condition, one of True, False, Unknown.
  final String status;

  /// Type of the condition.
  final String type;

  /// Converts a [StorageVersionCondition] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLastTransitionTime = lastTransitionTime;
    final tempMessage = message;
    final tempObservedGeneration = observedGeneration;
    final tempReason = reason;
    final tempStatus = status;
    final tempType = type;

    if (tempLastTransitionTime != null) {
      jsonData['lastTransitionTime'] = tempLastTransitionTime;
    }

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    if (tempObservedGeneration != null) {
      jsonData['observedGeneration'] = tempObservedGeneration;
    }

    jsonData['reason'] = tempReason;

    jsonData['status'] = tempStatus;

    jsonData['type'] = tempType;

    return jsonData;
  }
}
