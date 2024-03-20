// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// PodStatus represents information about the status of a pod. Status may trail the actual state of a system, especially if the node that hosts the pod cannot contact the control plane.
class PodStatus {
  /// Default constructor.
  const PodStatus({
    this.conditions,
    this.containerStatuses,
    this.ephemeralContainerStatuses,
    this.hostIP,
    this.initContainerStatuses,
    this.message,
    this.nominatedNodeName,
    this.phase,
    this.podIP,
    this.podIPs,
    this.qosClass,
    this.reason,
    this.resize,
    this.startTime,
  });

  /// Creates a [PodStatus] from JSON data.
  factory PodStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];
    final tempContainerStatusesJson = json['containerStatuses'];
    final tempEphemeralContainerStatusesJson =
        json['ephemeralContainerStatuses'];
    final tempHostIPJson = json['hostIP'];
    final tempInitContainerStatusesJson = json['initContainerStatuses'];
    final tempMessageJson = json['message'];
    final tempNominatedNodeNameJson = json['nominatedNodeName'];
    final tempPhaseJson = json['phase'];
    final tempPodIPJson = json['podIP'];
    final tempPodIPsJson = json['podIPs'];
    final tempQosClassJson = json['qosClass'];
    final tempReasonJson = json['reason'];
    final tempResizeJson = json['resize'];
    final tempStartTimeJson = json['startTime'];

    final List<PodCondition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => PodCondition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final List<ContainerStatus>? tempContainerStatuses =
        tempContainerStatusesJson != null
            ? List<dynamic>.from(tempContainerStatusesJson)
                .map(
                  (e) => ContainerStatus.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<ContainerStatus>? tempEphemeralContainerStatuses =
        tempEphemeralContainerStatusesJson != null
            ? List<dynamic>.from(tempEphemeralContainerStatusesJson)
                .map(
                  (e) => ContainerStatus.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final String? tempHostIP = tempHostIPJson;

    final List<ContainerStatus>? tempInitContainerStatuses =
        tempInitContainerStatusesJson != null
            ? List<dynamic>.from(tempInitContainerStatusesJson)
                .map(
                  (e) => ContainerStatus.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final String? tempMessage = tempMessageJson;
    final String? tempNominatedNodeName = tempNominatedNodeNameJson;
    final String? tempPhase = tempPhaseJson;
    final String? tempPodIP = tempPodIPJson;

    final List<PodIP>? tempPodIPs = tempPodIPsJson != null
        ? List<dynamic>.from(tempPodIPsJson)
            .map(
              (e) => PodIP.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final String? tempQosClass = tempQosClassJson;
    final String? tempReason = tempReasonJson;
    final String? tempResize = tempResizeJson;
    final DateTime? tempStartTime =
        tempStartTimeJson != null ? DateTime.tryParse(tempStartTimeJson) : null;

    return PodStatus(
      conditions: tempConditions,
      containerStatuses: tempContainerStatuses,
      ephemeralContainerStatuses: tempEphemeralContainerStatuses,
      hostIP: tempHostIP,
      initContainerStatuses: tempInitContainerStatuses,
      message: tempMessage,
      nominatedNodeName: tempNominatedNodeName,
      phase: tempPhase,
      podIP: tempPodIP,
      podIPs: tempPodIPs,
      qosClass: tempQosClass,
      reason: tempReason,
      resize: tempResize,
      startTime: tempStartTime,
    );
  }

  /// Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions.
  final List<PodCondition>? conditions;

  /// The list has one entry per container in the manifest. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status.
  final List<ContainerStatus>? containerStatuses;

  /// Status for any ephemeral containers that have run in this pod.
  final List<ContainerStatus>? ephemeralContainerStatuses;

  /// IP address of the host to which the pod is assigned. Empty if not yet scheduled.
  final String? hostIP;

  /// The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status.
  final List<ContainerStatus>? initContainerStatuses;

  /// A human readable message indicating details about why the pod is in this condition.
  final String? message;

  /// nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
  final String? nominatedNodeName;

  /// The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:
  ///
  /// Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.
  ///
  /// More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase.
  final String? phase;

  /// IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
  final String? podIP;

  /// podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
  final List<PodIP>? podIPs;

  /// The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-qos/#quality-of-service-classes.
  final String? qosClass;

  /// A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'.
  final String? reason;

  /// Status of resources resize desired for pod's containers. It is empty if no resources resize is pending. Any changes to container resources will automatically set this to "Proposed".
  final String? resize;

  /// RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
  final DateTime? startTime;

  /// Converts a [PodStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConditions = conditions;
    final tempContainerStatuses = containerStatuses;
    final tempEphemeralContainerStatuses = ephemeralContainerStatuses;
    final tempHostIP = hostIP;
    final tempInitContainerStatuses = initContainerStatuses;
    final tempMessage = message;
    final tempNominatedNodeName = nominatedNodeName;
    final tempPhase = phase;
    final tempPodIP = podIP;
    final tempPodIPs = podIPs;
    final tempQosClass = qosClass;
    final tempReason = reason;
    final tempResize = resize;
    final tempStartTime = startTime;

    if (tempConditions != null) {
      jsonData['conditions'] =
          tempConditions.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempContainerStatuses != null) {
      jsonData['containerStatuses'] =
          tempContainerStatuses.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempEphemeralContainerStatuses != null) {
      jsonData['ephemeralContainerStatuses'] = tempEphemeralContainerStatuses
          .map((e) => e.toJson())
          .toList(growable: false);
    }

    if (tempHostIP != null) {
      jsonData['hostIP'] = tempHostIP;
    }

    if (tempInitContainerStatuses != null) {
      jsonData['initContainerStatuses'] = tempInitContainerStatuses
          .map((e) => e.toJson())
          .toList(growable: false);
    }

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    if (tempNominatedNodeName != null) {
      jsonData['nominatedNodeName'] = tempNominatedNodeName;
    }

    if (tempPhase != null) {
      jsonData['phase'] = tempPhase;
    }

    if (tempPodIP != null) {
      jsonData['podIP'] = tempPodIP;
    }

    if (tempPodIPs != null) {
      jsonData['podIPs'] =
          tempPodIPs.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempQosClass != null) {
      jsonData['qosClass'] = tempQosClass;
    }

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    if (tempResize != null) {
      jsonData['resize'] = tempResize;
    }

    if (tempStartTime != null) {
      jsonData['startTime'] = tempStartTime;
    }

    return jsonData;
  }
}
