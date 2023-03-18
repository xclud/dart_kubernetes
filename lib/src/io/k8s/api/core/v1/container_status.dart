// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ContainerStatus contains details for the current status of this container.
class ContainerStatus {
  /// Default constructor.
  const ContainerStatus({
    this.allocatedResources,
    this.containerID,
    required this.image,
    required this.imageID,
    this.lastState,
    required this.name,
    required this.ready,
    this.resources,
    required this.restartCount,
    this.started,
    this.state,
  });

  /// Creates a [ContainerStatus] from JSON data.
  factory ContainerStatus.fromJson(Map<String, dynamic> json) {
    final tempAllocatedResourcesJson = json['allocatedResources'];
    final tempContainerIDJson = json['containerID'];
    final tempImageJson = json['image'];
    final tempImageIDJson = json['imageID'];
    final tempLastStateJson = json['lastState'];
    final tempNameJson = json['name'];
    final tempReadyJson = json['ready'];
    final tempResourcesJson = json['resources'];
    final tempRestartCountJson = json['restartCount'];
    final tempStartedJson = json['started'];
    final tempStateJson = json['state'];

    final Map<String, String>? tempAllocatedResources =
        tempAllocatedResourcesJson != null
            ? Map<String, String>.from(tempAllocatedResourcesJson)
            : null;

    final String? tempContainerID = tempContainerIDJson;
    final String tempImage = tempImageJson;
    final String tempImageID = tempImageIDJson;
    final ContainerState? tempLastState = tempLastStateJson != null
        ? ContainerState.fromJson(tempLastStateJson)
        : null;
    final String tempName = tempNameJson;
    final bool tempReady = tempReadyJson;
    final ResourceRequirements? tempResources = tempResourcesJson != null
        ? ResourceRequirements.fromJson(tempResourcesJson)
        : null;
    final int tempRestartCount = tempRestartCountJson;
    final bool? tempStarted = tempStartedJson;
    final ContainerState? tempState =
        tempStateJson != null ? ContainerState.fromJson(tempStateJson) : null;

    return ContainerStatus(
      allocatedResources: tempAllocatedResources,
      containerID: tempContainerID,
      image: tempImage,
      imageID: tempImageID,
      lastState: tempLastState,
      name: tempName,
      ready: tempReady,
      resources: tempResources,
      restartCount: tempRestartCount,
      started: tempStarted,
      state: tempState,
    );
  }

  /// AllocatedResources represents the compute resources allocated for this container by the node. Kubelet sets this value to Container.Resources.Requests upon successful pod admission and after successfully admitting desired pod resize.
  final Map<String, String>? allocatedResources;

  /// ContainerID is the ID of the container in the format '<type>://<container_id>'. Where type is a container runtime identifier, returned from Version call of CRI API (for example "containerd").
  final String? containerID;

  /// Image is the name of container image that the container is running. The container image may not match the image used in the PodSpec, as it may have been resolved by the runtime. More info: https://kubernetes.io/docs/concepts/containers/images.
  final String image;

  /// ImageID is the image ID of the container's image. The image ID may not match the image ID of the image used in the PodSpec, as it may have been resolved by the runtime.
  final String imageID;

  /// LastTerminationState holds the last termination state of the container to help debug container crashes and restarts. This field is not populated if the container is still running and RestartCount is 0.
  final ContainerState? lastState;

  /// Name is a DNS_LABEL representing the unique name of the container. Each container in a pod must have a unique name across all container types. Cannot be updated.
  final String name;

  /// Ready specifies whether the container is currently passing its readiness check. The value will change as readiness probes keep executing. If no readiness probes are specified, this field defaults to true once the container is fully started (see Started field).
  ///
  /// The value is typically used to determine whether a container is ready to accept traffic.
  final bool ready;

  /// Resources represents the compute resource requests and limits that have been successfully enacted on the running container after it has been started or has been successfully resized.
  final ResourceRequirements? resources;

  /// RestartCount holds the number of times the container has been restarted. Kubelet makes an effort to always increment the value, but there are cases when the state may be lost due to node restarts and then the value may be reset to 0. The value is never negative.
  final int restartCount;

  /// Started indicates whether the container has finished its postStart lifecycle hook and passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. In both cases, startup probes will run again. Is always true when no startupProbe is defined and container is running and has passed the postStart lifecycle hook. The null value must be treated the same as false.
  final bool? started;

  /// State holds details about the container's current condition.
  final ContainerState? state;

  /// Converts a [ContainerStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAllocatedResources = allocatedResources;
    final tempContainerID = containerID;
    final tempImage = image;
    final tempImageID = imageID;
    final tempLastState = lastState;
    final tempName = name;
    final tempReady = ready;
    final tempResources = resources;
    final tempRestartCount = restartCount;
    final tempStarted = started;
    final tempState = state;

    if (tempAllocatedResources != null) {
      jsonData['allocatedResources'] = tempAllocatedResources;
    }

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

    if (tempResources != null) {
      jsonData['resources'] = tempResources.toJson();
    }

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
