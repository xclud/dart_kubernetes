// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
class ContainerState {
  /// Default constructor.
  const ContainerState({
    this.running,
    this.terminated,
    this.waiting,
  });

  /// Creates a [ContainerState] from JSON data.
  factory ContainerState.fromJson(Map<String, dynamic> json) {
    final tempRunningJson = json['running'];
    final tempTerminatedJson = json['terminated'];
    final tempWaitingJson = json['waiting'];

    final ContainerStateRunning? tempRunning = tempRunningJson != null
        ? ContainerStateRunning.fromJson(tempRunningJson)
        : null;
    final ContainerStateTerminated? tempTerminated = tempTerminatedJson != null
        ? ContainerStateTerminated.fromJson(tempTerminatedJson)
        : null;
    final ContainerStateWaiting? tempWaiting = tempWaitingJson != null
        ? ContainerStateWaiting.fromJson(tempWaitingJson)
        : null;

    return ContainerState(
      running: tempRunning,
      terminated: tempTerminated,
      waiting: tempWaiting,
    );
  }

  /// Details about a running container.
  final ContainerStateRunning? running;

  /// Details about a terminated container.
  final ContainerStateTerminated? terminated;

  /// Details about a waiting container.
  final ContainerStateWaiting? waiting;

  /// Converts a [ContainerState] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempRunning = running;
    final tempTerminated = terminated;
    final tempWaiting = waiting;

    if (tempRunning != null) {
      jsonData['running'] = tempRunning.toJson();
    }

    if (tempTerminated != null) {
      jsonData['terminated'] = tempTerminated.toJson();
    }

    if (tempWaiting != null) {
      jsonData['waiting'] = tempWaiting.toJson();
    }

    return jsonData;
  }
}
