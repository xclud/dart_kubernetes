import 'container.dart';
import 'affinity.dart';
import 'ephemeral_container.dart';
import 'pod_dns_config.dart';
import 'host_alias.dart';
import 'local_object_reference.dart';
import 'other.dart';

class PodSpec {
  final List<Container>? containers;
  final int? activeDeadlineSeconds;
  final Affinity? affinity;
  final bool? automountServiceAccountToken;
  final PodDNSConfig? dnsConfig;
  final String? dnsPolicy;
  final bool? enableServiceLinks;
  final List<EphemeralContainer>? ephemeralContainers;
  final List<HostAlias>? hostAliases;
  final bool? hostIPC;
  final bool? hostNetwork;
  final bool? hostPID;
  final String? hostname;
  final List<LocalObjectReference>? imagePullSecrets;
  final List<Container>? initContainers;
  final String? nodeName;
  final Map<String, String>? nodeSelector;
  final Map<String, ResourceQuantity>? overhead;
  final String? preemptionPolicy;
  final int? priority;
  final String? priorityClassName;
  final List<PodReadinessGate>? readinessGates;
  final String? restartPolicy;
  final String? runtimeClassName;
  final String? schedulerName;
  final PodSecurityContext? securityContext;
  final String? serviceAccount;
  final String? serviceAccountName;
  final bool? setHostnameAsFQDN;
  final bool? shareProcessNamespace;
  final String? subdomain;
  final int? terminationGracePeriodSeconds;
  final List<Toleration>? tolerations;
  final List<TopologySpreadConstraint>? topologySpreadConstraints;
  final List<Volume>? volumes;

  PodSpec({
    this.containers,
    this.activeDeadlineSeconds,
    this.affinity,
    this.automountServiceAccountToken,
    this.dnsConfig,
    this.dnsPolicy,
    this.enableServiceLinks,
    this.ephemeralContainers,
    this.hostAliases,
    this.hostIPC,
    this.hostNetwork,
    this.hostPID,
    this.hostname,
    this.imagePullSecrets,
    this.initContainers,
    this.nodeName,
    this.nodeSelector,
    this.overhead,
    this.preemptionPolicy,
    this.priority,
    this.priorityClassName,
    this.readinessGates,
    this.restartPolicy,
    this.runtimeClassName,
    this.schedulerName,
    this.securityContext,
    this.serviceAccount,
    this.serviceAccountName,
    this.setHostnameAsFQDN,
    this.shareProcessNamespace,
    this.subdomain,
    this.terminationGracePeriodSeconds,
    this.tolerations,
    this.topologySpreadConstraints,
    this.volumes,
  });
}
