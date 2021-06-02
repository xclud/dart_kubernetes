import 'pod_ip.dart';
import 'other.dart';

class PodStatus {
  PodStatus(
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
