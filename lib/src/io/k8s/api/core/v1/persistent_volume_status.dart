// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// PersistentVolumeStatus is the current status of a persistent volume.
class PersistentVolumeStatus {
  /// Default constructor.
  const PersistentVolumeStatus({
    this.message,
    this.phase,
    this.reason,
  });

  /// Creates a [PersistentVolumeStatus] from JSON data.
  factory PersistentVolumeStatus.fromJson(Map<String, dynamic> json) {
    final tempMessageJson = json['message'];
    final tempPhaseJson = json['phase'];
    final tempReasonJson = json['reason'];

    final String? tempMessage = tempMessageJson;
    final String? tempPhase = tempPhaseJson;
    final String? tempReason = tempReasonJson;

    return PersistentVolumeStatus(
      message: tempMessage,
      phase: tempPhase,
      reason: tempReason,
    );
  }

  /// message is a human-readable message indicating details about why the volume is in this state.
  final String? message;

  /// phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase.
  final String? phase;

  /// reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
  final String? reason;

  /// Converts a [PersistentVolumeStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMessage = message;
    final tempPhase = phase;
    final tempReason = reason;

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    if (tempPhase != null) {
      jsonData['phase'] = tempPhase;
    }

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    return jsonData;
  }
}
