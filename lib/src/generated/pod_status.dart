import 'pod_ip.dart';
import 'pod_condition.dart';
import 'container_status.dart';

class PodStatus {
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
          qosClass: json['qosClass'],
          reason: json['reason'],
          startTime: json['startTime'] != null
              ? DateTime.tryParse(json['startTime'])
              : null,
        );

  final List<PodCondition>? conditions;
  final List<ContainerStatus>? containerStatuses;
  final List<ContainerStatus>? ephemeralContainerStatuses;
  final String? hostIP;
  final List<ContainerStatus>? initContainerStatuses;
  final String? message;
  final String? nominatedNodeName;
  final String? phase;
  final String? podIP;
  final List<PodIP>? podIPs;
  final String? qosClass;
  final String? reason;
  final DateTime? startTime;
}
