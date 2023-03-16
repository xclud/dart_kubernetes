// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ContainerStatus contains details for the current status of this container.
class ContainerStatus {
  /// Default constructor.
  const ContainerStatus({
    this.containerID,
    required this.image,
    required this.imageID,
    this.lastState,
    required this.name,
    required this.ready,
    required this.restartCount,
    this.started,
    this.state,
  });

  /// Creates a [ContainerStatus] from JSON data.
  factory ContainerStatus.fromJson(Map<String, dynamic> json) {
    final tempContainerIDJson = json['containerID'];
    final tempImageJson = json['image'];
    final tempImageIDJson = json['imageID'];
    final tempLastStateJson = json['lastState'];
    final tempNameJson = json['name'];
    final tempReadyJson = json['ready'];
    final tempRestartCountJson = json['restartCount'];
    final tempStartedJson = json['started'];
    final tempStateJson = json['state'];

    final String? tempContainerID = tempContainerIDJson;
    final String tempImage = tempImageJson;
    final String tempImageID = tempImageIDJson;
    final ContainerState? tempLastState = tempLastStateJson != null
        ? ContainerState.fromJson(tempLastStateJson)
        : null;
    final String tempName = tempNameJson;
    final bool tempReady = tempReadyJson;
    final int tempRestartCount = tempRestartCountJson;
    final bool? tempStarted = tempStartedJson;
    final ContainerState? tempState =
        tempStateJson != null ? ContainerState.fromJson(tempStateJson) : null;

    return ContainerStatus(
      containerID: tempContainerID,
      image: tempImage,
      imageID: tempImageID,
      lastState: tempLastState,
      name: tempName,
      ready: tempReady,
      restartCount: tempRestartCount,
      started: tempStarted,
      state: tempState,
    );
  }

  /// Container's ID in the format '<type>://<container_id>'.
  final String? containerID;

  /// The image the container is running. More info: https://kubernetes.io/docs/concepts/containers/images.
  final String image;

  /// ImageID of the container's image.
  final String imageID;

  /// Details about the container's last termination condition.
  final ContainerState? lastState;

  /// This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
  final String name;

  /// Specifies whether the container has passed its readiness probe.
  final bool ready;

  /// The number of times the container has been restarted.
  final int restartCount;

  /// Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.
  final bool? started;

  /// Details about the container's current condition.
  final ContainerState? state;

  /// Converts a [ContainerStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempContainerID = containerID;
    final tempImage = image;
    final tempImageID = imageID;
    final tempLastState = lastState;
    final tempName = name;
    final tempReady = ready;
    final tempRestartCount = restartCount;
    final tempStarted = started;
    final tempState = state;

    if (tempContainerID != null) {
      jsonData['containerID'] = tempContainerID;
    }

    jsonData['image'] = tempImage;

    jsonData['imageID'] = tempImageID;

    if (tempLastState != null) {
      jsonData['lastState'] = tempLastState.toJson();
    }

    jsonData['name'] = tempName;

    jsonData['ready'] = tempReady;

    jsonData['restartCount'] = tempRestartCount;

    if (tempStarted != null) {
      jsonData['started'] = tempStarted;
    }

    if (tempState != null) {
      jsonData['state'] = tempState.toJson();
    }

    return jsonData;
  }
}
