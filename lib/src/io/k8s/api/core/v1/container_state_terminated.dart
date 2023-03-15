// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ContainerStateTerminated is a terminated state of a container.
class ContainerStateTerminated {
  /// Default constructor.
  const ContainerStateTerminated({
    this.containerID,
    required this.exitCode,
    this.finishedAt,
    this.message,
    this.reason,
    this.signal,
    this.startedAt,
  });

  /// Creates a [ContainerStateTerminated] from JSON data.
  factory ContainerStateTerminated.fromJson(Map<String, dynamic> json) {
    final tempContainerIDJson = json['containerID'];
    final tempExitCodeJson = json['exitCode'];
    final tempFinishedAtJson = json['finishedAt'];
    final tempMessageJson = json['message'];
    final tempReasonJson = json['reason'];
    final tempSignalJson = json['signal'];
    final tempStartedAtJson = json['startedAt'];

    final tempContainerID = tempContainerIDJson;
    final tempExitCode = tempExitCodeJson;
    final tempFinishedAt = tempFinishedAtJson != null
        ? DateTime.tryParse(tempFinishedAtJson)
        : null;
    final tempMessage = tempMessageJson;
    final tempReason = tempReasonJson;
    final tempSignal = tempSignalJson;
    final tempStartedAt =
        tempStartedAtJson != null ? DateTime.tryParse(tempStartedAtJson) : null;

    return ContainerStateTerminated(
      containerID: tempContainerID,
      exitCode: tempExitCode,
      finishedAt: tempFinishedAt,
      message: tempMessage,
      reason: tempReason,
      signal: tempSignal,
      startedAt: tempStartedAt,
    );
  }

  /// Container's ID in the format '<type>://<container_id>'.
  final String? containerID;

  /// Exit status from the last termination of the container.
  final int exitCode;

  /// Time at which the container last terminated.
  final DateTime? finishedAt;

  /// Message regarding the last termination of the container.
  final String? message;

  /// (brief) reason from the last termination of the container.
  final String? reason;

  /// Signal from the last termination of the container.
  final int? signal;

  /// Time at which previous execution of the container started.
  final DateTime? startedAt;

  /// Converts a [ContainerStateTerminated] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempContainerID = containerID;
    final tempExitCode = exitCode;
    final tempFinishedAt = finishedAt;
    final tempMessage = message;
    final tempReason = reason;
    final tempSignal = signal;
    final tempStartedAt = startedAt;

    if (tempContainerID != null) {
      jsonData['containerID'] = tempContainerID;
    }

    jsonData['exitCode'] = tempExitCode;

    if (tempFinishedAt != null) {
      jsonData['finishedAt'] = tempFinishedAt;
    }

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    if (tempSignal != null) {
      jsonData['signal'] = tempSignal;
    }

    if (tempStartedAt != null) {
      jsonData['startedAt'] = tempStartedAt;
    }

    return jsonData;
  }
}
