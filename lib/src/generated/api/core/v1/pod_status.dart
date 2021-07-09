import 'package:kubernetes/src/generated/api/core/v1/pod_condition.dart';
import 'package:kubernetes/src/generated/api/core/v1/container_status.dart';
import 'package:kubernetes/src/generated/api/core/v1/pod_ip.dart';

/// PodStatus represents information about the status of a pod. Status may trail the actual state of a system, especially if the node that hosts the pod cannot contact the control plane.
class PodStatus {
  /// The main constructor.
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
    this.startTime,
  });

  /// Creates a PodStatus from JSON data.
  PodStatus.fromJson(Map<String, dynamic> json)
      : this(
          conditions: json['conditions'] != null
              ? PodCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          containerStatuses: json['containerStatuses'] != null
              ? ContainerStatus.listFromJson(
                  (json['containerStatuses'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          ephemeralContainerStatuses: json['ephemeralContainerStatuses'] != null
              ? ContainerStatus.listFromJson(
                  (json['ephemeralContainerStatuses'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          hostIP: json['hostIP'],
          initContainerStatuses: json['initContainerStatuses'] != null
              ? ContainerStatus.listFromJson(
                  (json['initContainerStatuses'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          message: json['message'],
          nominatedNodeName: json['nominatedNodeName'],
          phase: json['phase'],
          podIP: json['podIP'],
          podIPs: json['podIPs'] != null
              ? PodIP.listFromJson(
                  (json['podIPs'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          qosClass: json['qosClass'],
          reason: json['reason'],
          startTime: json['startTime'] != null
              ? DateTime.tryParse(json['startTime'])
              : null,
        );

  /// Creates a list of PodStatus from JSON data.
  static List<PodStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodStatus.fromJson(e)).toList();
  }

  /// Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions.
  final List<PodCondition>? conditions;

  /// The list has one entry per container in the manifest. Each entry is currently the output of `docker inspect`. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status.
  final List<ContainerStatus>? containerStatuses;

  /// Status for any ephemeral containers that have run in this pod. This field is alpha-level and is only populated by servers that enable the EphemeralContainers feature.
  final List<ContainerStatus>? ephemeralContainerStatuses;

  /// IP address of the host to which the pod is assigned. Empty if not yet scheduled.
  final String? hostIP;

  /// The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status.
  final List<ContainerStatus>? initContainerStatuses;

  /// A human readable message indicating details about why the pod is in this condition.
  final String? message;

  /// NominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
  final String? nominatedNodeName;

  /// The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:
  ///
  /// Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.
  ///
  /// More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase.
  final String? phase;

  /// IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
  final String? podIP;

  /// PodIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
  final List<PodIP>? podIPs;

  /// The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md.
  final String? qosClass;

  /// A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'.
  final String? reason;

  /// RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
  final DateTime? startTime;
}
