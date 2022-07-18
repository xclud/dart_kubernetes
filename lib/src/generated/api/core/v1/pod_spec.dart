import 'package:kubernetes/src/generated/api/core/v1/affinity.dart';
import 'package:kubernetes/src/generated/api/core/v1/container.dart';
import 'package:kubernetes/src/generated/api/core/v1/pod_dns_config.dart';
import 'package:kubernetes/src/generated/api/core/v1/ephemeral_container.dart';
import 'package:kubernetes/src/generated/api/core/v1/host_alias.dart';
import 'package:kubernetes/src/generated/api/core/v1/local_object_reference.dart';
import 'package:kubernetes/src/generated/api/core/v1/pod_os.dart';
import 'package:kubernetes/src/generated/api/core/v1/pod_readiness_gate.dart';
import 'package:kubernetes/src/generated/api/core/v1/pod_security_context.dart';
import 'package:kubernetes/src/generated/api/core/v1/toleration.dart';
import 'package:kubernetes/src/generated/api/core/v1/topology_spread_constraint.dart';
import 'package:kubernetes/src/generated/api/core/v1/volume.dart';

/// PodSpec is a description of a pod.
class PodSpec {
  /// The main constructor.
  const PodSpec({
    this.activeDeadlineSeconds,
    this.affinity,
    this.automountServiceAccountToken,
    required this.containers,
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
    this.os,
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

  /// Creates a PodSpec from JSON data.
  PodSpec.fromJson(Map<String, dynamic> json)
      : this(
          activeDeadlineSeconds: json['activeDeadlineSeconds'],
          affinity: json['affinity'] != null
              ? Affinity.fromJson(json['affinity'])
              : null,
          automountServiceAccountToken: json['automountServiceAccountToken'],
          containers: json['containers'] != null
              ? Container.listFromJson(
                  (json['containers'] as Iterable).cast<Map<String, dynamic>>())
              : [],
          dnsConfig: json['dnsConfig'] != null
              ? PodDNSConfig.fromJson(json['dnsConfig'])
              : null,
          dnsPolicy: json['dnsPolicy'],
          enableServiceLinks: json['enableServiceLinks'],
          ephemeralContainers: json['ephemeralContainers'] != null
              ? EphemeralContainer.listFromJson(
                  (json['ephemeralContainers'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          hostAliases: json['hostAliases'] != null
              ? HostAlias.listFromJson((json['hostAliases'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : null,
          hostIPC: json['hostIPC'],
          hostNetwork: json['hostNetwork'],
          hostPID: json['hostPID'],
          hostname: json['hostname'],
          imagePullSecrets: json['imagePullSecrets'] != null
              ? LocalObjectReference.listFromJson(
                  (json['imagePullSecrets'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          initContainers: json['initContainers'] != null
              ? Container.listFromJson((json['initContainers'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : null,
          nodeName: json['nodeName'],
          nodeSelector: json['nodeSelector'] != null
              ? Map<String, String>.from(json['nodeSelector'])
              : null,
          os: json['os'] != null ? PodOS.fromJson(json['os']) : null,
          overhead: json['overhead'] != null
              ? Map<String, String>.from(json['overhead'])
              : null,
          preemptionPolicy: json['preemptionPolicy'],
          priority: json['priority'],
          priorityClassName: json['priorityClassName'],
          readinessGates: json['readinessGates'] != null
              ? PodReadinessGate.listFromJson(
                  (json['readinessGates'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          restartPolicy: json['restartPolicy'],
          runtimeClassName: json['runtimeClassName'],
          schedulerName: json['schedulerName'],
          securityContext: json['securityContext'] != null
              ? PodSecurityContext.fromJson(json['securityContext'])
              : null,
          serviceAccount: json['serviceAccount'],
          serviceAccountName: json['serviceAccountName'],
          setHostnameAsFQDN: json['setHostnameAsFQDN'],
          shareProcessNamespace: json['shareProcessNamespace'],
          subdomain: json['subdomain'],
          terminationGracePeriodSeconds: json['terminationGracePeriodSeconds'],
          tolerations: json['tolerations'] != null
              ? Toleration.listFromJson((json['tolerations'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : null,
          topologySpreadConstraints: json['topologySpreadConstraints'] != null
              ? TopologySpreadConstraint.listFromJson(
                  (json['topologySpreadConstraints'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          volumes: json['volumes'] != null
              ? Volume.listFromJson(
                  (json['volumes'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of PodSpec from JSON data.
  static List<PodSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodSpec.fromJson(e)).toList();
  }

  /// Converts a PodSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (activeDeadlineSeconds != null) {
      jsonData['activeDeadlineSeconds'] = activeDeadlineSeconds!;
    }
    if (affinity != null) {
      jsonData['affinity'] = affinity!.toJson();
    }
    if (automountServiceAccountToken != null) {
      jsonData['automountServiceAccountToken'] = automountServiceAccountToken!;
    }
    jsonData['containers'] = containers.map((item) => item.toJson()).toList();
    if (dnsConfig != null) {
      jsonData['dnsConfig'] = dnsConfig!.toJson();
    }
    if (dnsPolicy != null) {
      jsonData['dnsPolicy'] = dnsPolicy!;
    }
    if (enableServiceLinks != null) {
      jsonData['enableServiceLinks'] = enableServiceLinks!;
    }
    if (ephemeralContainers != null) {
      jsonData['ephemeralContainers'] =
          ephemeralContainers!.map((item) => item.toJson()).toList();
    }
    if (hostAliases != null) {
      jsonData['hostAliases'] =
          hostAliases!.map((item) => item.toJson()).toList();
    }
    if (hostIPC != null) {
      jsonData['hostIPC'] = hostIPC!;
    }
    if (hostNetwork != null) {
      jsonData['hostNetwork'] = hostNetwork!;
    }
    if (hostPID != null) {
      jsonData['hostPID'] = hostPID!;
    }
    if (hostname != null) {
      jsonData['hostname'] = hostname!;
    }
    if (imagePullSecrets != null) {
      jsonData['imagePullSecrets'] =
          imagePullSecrets!.map((item) => item.toJson()).toList();
    }
    if (initContainers != null) {
      jsonData['initContainers'] =
          initContainers!.map((item) => item.toJson()).toList();
    }
    if (nodeName != null) {
      jsonData['nodeName'] = nodeName!;
    }
    if (nodeSelector != null) {
      jsonData['nodeSelector'] = nodeSelector!;
    }
    if (os != null) {
      jsonData['os'] = os!.toJson();
    }
    if (overhead != null) {
      jsonData['overhead'] = overhead!;
    }
    if (preemptionPolicy != null) {
      jsonData['preemptionPolicy'] = preemptionPolicy!;
    }
    if (priority != null) {
      jsonData['priority'] = priority!;
    }
    if (priorityClassName != null) {
      jsonData['priorityClassName'] = priorityClassName!;
    }
    if (readinessGates != null) {
      jsonData['readinessGates'] =
          readinessGates!.map((item) => item.toJson()).toList();
    }
    if (restartPolicy != null) {
      jsonData['restartPolicy'] = restartPolicy!;
    }
    if (runtimeClassName != null) {
      jsonData['runtimeClassName'] = runtimeClassName!;
    }
    if (schedulerName != null) {
      jsonData['schedulerName'] = schedulerName!;
    }
    if (securityContext != null) {
      jsonData['securityContext'] = securityContext!.toJson();
    }
    if (serviceAccount != null) {
      jsonData['serviceAccount'] = serviceAccount!;
    }
    if (serviceAccountName != null) {
      jsonData['serviceAccountName'] = serviceAccountName!;
    }
    if (setHostnameAsFQDN != null) {
      jsonData['setHostnameAsFQDN'] = setHostnameAsFQDN!;
    }
    if (shareProcessNamespace != null) {
      jsonData['shareProcessNamespace'] = shareProcessNamespace!;
    }
    if (subdomain != null) {
      jsonData['subdomain'] = subdomain!;
    }
    if (terminationGracePeriodSeconds != null) {
      jsonData['terminationGracePeriodSeconds'] =
          terminationGracePeriodSeconds!;
    }
    if (tolerations != null) {
      jsonData['tolerations'] =
          tolerations!.map((item) => item.toJson()).toList();
    }
    if (topologySpreadConstraints != null) {
      jsonData['topologySpreadConstraints'] =
          topologySpreadConstraints!.map((item) => item.toJson()).toList();
    }
    if (volumes != null) {
      jsonData['volumes'] = volumes!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
  final int? activeDeadlineSeconds;

  /// If specified, the pod's scheduling constraints.
  final Affinity? affinity;

  /// AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
  final bool? automountServiceAccountToken;

  /// List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
  final List<Container> containers;

  /// Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
  final PodDNSConfig? dnsConfig;

  /// Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
  ///
  ///.
  final String? dnsPolicy;

  /// EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
  final bool? enableServiceLinks;

  /// List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource. This field is beta-level and available on clusters that haven't disabled the EphemeralContainers feature gate.
  final List<EphemeralContainer>? ephemeralContainers;

  /// HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
  final List<HostAlias>? hostAliases;

  /// Use the host's ipc namespace. Optional: Default to false.
  final bool? hostIPC;

  /// Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
  final bool? hostNetwork;

  /// Use the host's pid namespace. Optional: Default to false.
  final bool? hostPID;

  /// Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
  final String? hostname;

  /// ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod.
  final List<LocalObjectReference>? imagePullSecrets;

  /// List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/.
  final List<Container>? initContainers;

  /// NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
  final String? nodeName;

  /// NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/.
  final Map<String, String>? nodeSelector;

  /// Specifies the OS of the containers in the pod. Some pod and container fields are restricted if this is set.
  ///
  /// If the OS field is set to linux, the following fields must be unset: -securityContext.windowsOptions
  ///
  /// If the OS field is set to windows, following fields must be unset: - spec.hostPID - spec.hostIPC - spec.securityContext.seLinuxOptions - spec.securityContext.seccompProfile - spec.securityContext.fsGroup - spec.securityContext.fsGroupChangePolicy - spec.securityContext.sysctls - spec.shareProcessNamespace - spec.securityContext.runAsUser - spec.securityContext.runAsGroup - spec.securityContext.supplementalGroups - spec.containers[*].securityContext.seLinuxOptions - spec.containers[*].securityContext.seccompProfile - spec.containers[*].securityContext.capabilities - spec.containers[*].securityContext.readOnlyRootFilesystem - spec.containers[*].securityContext.privileged - spec.containers[*].securityContext.allowPrivilegeEscalation - spec.containers[*].securityContext.procMount - spec.containers[*].securityContext.runAsUser - spec.containers[*].securityContext.runAsGroup This is a beta field and requires the IdentifyPodOS feature.
  final PodOS? os;

  /// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md.
  final Map<String, String>? overhead;

  /// PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  final String? preemptionPolicy;

  /// The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
  final int? priority;

  /// If specified, indicates the pod's priority. "system-node-critical" and "system-cluster-critical" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
  final String? priorityClassName;

  /// If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to "True" More info: https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates.
  final List<PodReadinessGate>? readinessGates;

  /// Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy
  ///
  ///.
  final String? restartPolicy;

  /// RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class.
  final String? runtimeClassName;

  /// If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
  final String? schedulerName;

  /// SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
  final PodSecurityContext? securityContext;

  /// DeprecatedServiceAccount is a depreciated alias for ServiceAccountName.
  final String? serviceAccount;

  /// ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/.
  final String? serviceAccountName;

  /// If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
  final bool? setHostnameAsFQDN;

  /// Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
  final bool? shareProcessNamespace;

  /// If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
  final String? subdomain;

  /// Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  final int? terminationGracePeriodSeconds;

  /// If specified, the pod's tolerations.
  final List<Toleration>? tolerations;

  /// TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
  final List<TopologySpreadConstraint>? topologySpreadConstraints;

  /// List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes.
  final List<Volume>? volumes;
}
