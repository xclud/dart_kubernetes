import 'container.dart';
import 'affinity.dart';
import 'ephemeral_container.dart';
import 'pod_dns_config.dart';
import 'host_alias.dart';
import 'local_object_reference.dart';
import 'other.dart';
import 'volume.dart';

class PodSpec {
  const PodSpec({
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

  PodSpec.fromJson(Map<String, dynamic> json)
      : this(
          containers: json['containers'] != null
              ? Container.listFromJson(
                  (json['containers'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          activeDeadlineSeconds: json['activeDeadlineSeconds'],
          //affinity: json['affinity'],
          automountServiceAccountToken: json['automountServiceAccountToken'],
          //dnsConfig: json['dnsConfig'],
          dnsPolicy: json['dnsPolicy'],
          enableServiceLinks: json['enableServiceLinks'],
          //ephemeralContainers: json['ephemeralContainers'],
          //hostAliases: json['hostAliases'],
          hostIPC: json['hostIPC'],
          hostNetwork: json['hostNetwork'],
          hostPID: json['hostPID'],
          hostname: json['hostname'],
          imagePullSecrets: json['imagePullSecrets'],
          initContainers: json['initContainers'] != null
              ? Container.listFromJson((json['initContainers'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : null,
          nodeName: json['nodeName'],
          //nodeSelector: json['nodeSelector'],
          //overhead: json['overhead'],
          preemptionPolicy: json['preemptionPolicy'],
          priority: json['priority'],
          priorityClassName: json['priorityClassName'],
          //readinessGates: json['readinessGates'],
          restartPolicy: json['restartPolicy'],
          runtimeClassName: json['runtimeClassName'],
          schedulerName: json['schedulerName'],
          //securityContext: json['securityContext'],
          serviceAccount: json['serviceAccount'],
          serviceAccountName: json['serviceAccountName'],
          setHostnameAsFQDN: json['setHostnameAsFQDN'],
          shareProcessNamespace: json['shareProcessNamespace'],
          subdomain: json['subdomain'],
          terminationGracePeriodSeconds: json['terminationGracePeriodSeconds'],
          //tolerations: json['tolerations'],
          //topologySpreadConstraints: json['topologySpreadConstraints'],
          //volumes: json['volumes'],
        );

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
}
