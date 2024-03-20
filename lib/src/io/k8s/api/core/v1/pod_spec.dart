// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// PodSpec is a description of a pod.
class PodSpec {
  /// Default constructor.
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
    this.hostUsers,
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
    this.resourceClaims,
    this.restartPolicy,
    this.runtimeClassName,
    this.schedulerName,
    this.schedulingGates,
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

  /// Creates a [PodSpec] from JSON data.
  factory PodSpec.fromJson(Map<String, dynamic> json) {
    final tempActiveDeadlineSecondsJson = json['activeDeadlineSeconds'];
    final tempAffinityJson = json['affinity'];
    final tempAutomountServiceAccountTokenJson =
        json['automountServiceAccountToken'];
    final tempContainersJson = json['containers'];
    final tempDnsConfigJson = json['dnsConfig'];
    final tempDnsPolicyJson = json['dnsPolicy'];
    final tempEnableServiceLinksJson = json['enableServiceLinks'];
    final tempEphemeralContainersJson = json['ephemeralContainers'];
    final tempHostAliasesJson = json['hostAliases'];
    final tempHostIPCJson = json['hostIPC'];
    final tempHostNetworkJson = json['hostNetwork'];
    final tempHostPIDJson = json['hostPID'];
    final tempHostUsersJson = json['hostUsers'];
    final tempHostnameJson = json['hostname'];
    final tempImagePullSecretsJson = json['imagePullSecrets'];
    final tempInitContainersJson = json['initContainers'];
    final tempNodeNameJson = json['nodeName'];
    final tempNodeSelectorJson = json['nodeSelector'];
    final tempOsJson = json['os'];
    final tempOverheadJson = json['overhead'];
    final tempPreemptionPolicyJson = json['preemptionPolicy'];
    final tempPriorityJson = json['priority'];
    final tempPriorityClassNameJson = json['priorityClassName'];
    final tempReadinessGatesJson = json['readinessGates'];
    final tempResourceClaimsJson = json['resourceClaims'];
    final tempRestartPolicyJson = json['restartPolicy'];
    final tempRuntimeClassNameJson = json['runtimeClassName'];
    final tempSchedulerNameJson = json['schedulerName'];
    final tempSchedulingGatesJson = json['schedulingGates'];
    final tempSecurityContextJson = json['securityContext'];
    final tempServiceAccountJson = json['serviceAccount'];
    final tempServiceAccountNameJson = json['serviceAccountName'];
    final tempSetHostnameAsFQDNJson = json['setHostnameAsFQDN'];
    final tempShareProcessNamespaceJson = json['shareProcessNamespace'];
    final tempSubdomainJson = json['subdomain'];
    final tempTerminationGracePeriodSecondsJson =
        json['terminationGracePeriodSeconds'];
    final tempTolerationsJson = json['tolerations'];
    final tempTopologySpreadConstraintsJson = json['topologySpreadConstraints'];
    final tempVolumesJson = json['volumes'];

    final int? tempActiveDeadlineSeconds = tempActiveDeadlineSecondsJson;
    final Affinity? tempAffinity =
        tempAffinityJson != null ? Affinity.fromJson(tempAffinityJson) : null;
    final bool? tempAutomountServiceAccountToken =
        tempAutomountServiceAccountTokenJson;

    final List<Container> tempContainers =
        List<dynamic>.from(tempContainersJson)
            .map(
              (e) => Container.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList();

    final PodDNSConfig? tempDnsConfig = tempDnsConfigJson != null
        ? PodDNSConfig.fromJson(tempDnsConfigJson)
        : null;
    final String? tempDnsPolicy = tempDnsPolicyJson;
    final bool? tempEnableServiceLinks = tempEnableServiceLinksJson;

    final List<EphemeralContainer>? tempEphemeralContainers =
        tempEphemeralContainersJson != null
            ? List<dynamic>.from(tempEphemeralContainersJson)
                .map(
                  (e) => EphemeralContainer.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<HostAlias>? tempHostAliases = tempHostAliasesJson != null
        ? List<dynamic>.from(tempHostAliasesJson)
            .map(
              (e) => HostAlias.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final bool? tempHostIPC = tempHostIPCJson;
    final bool? tempHostNetwork = tempHostNetworkJson;
    final bool? tempHostPID = tempHostPIDJson;
    final bool? tempHostUsers = tempHostUsersJson;
    final String? tempHostname = tempHostnameJson;

    final List<LocalObjectReference>? tempImagePullSecrets =
        tempImagePullSecretsJson != null
            ? List<dynamic>.from(tempImagePullSecretsJson)
                .map(
                  (e) => LocalObjectReference.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<Container>? tempInitContainers = tempInitContainersJson != null
        ? List<dynamic>.from(tempInitContainersJson)
            .map(
              (e) => Container.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final String? tempNodeName = tempNodeNameJson;

    final Map<String, String>? tempNodeSelector = tempNodeSelectorJson != null
        ? Map<String, String>.from(tempNodeSelectorJson)
        : null;

    final PodOS? tempOs =
        tempOsJson != null ? PodOS.fromJson(tempOsJson) : null;

    final Map<String, String>? tempOverhead = tempOverheadJson != null
        ? Map<String, String>.from(tempOverheadJson)
        : null;

    final String? tempPreemptionPolicy = tempPreemptionPolicyJson;
    final int? tempPriority = tempPriorityJson;
    final String? tempPriorityClassName = tempPriorityClassNameJson;

    final List<PodReadinessGate>? tempReadinessGates =
        tempReadinessGatesJson != null
            ? List<dynamic>.from(tempReadinessGatesJson)
                .map(
                  (e) => PodReadinessGate.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<PodResourceClaim>? tempResourceClaims =
        tempResourceClaimsJson != null
            ? List<dynamic>.from(tempResourceClaimsJson)
                .map(
                  (e) => PodResourceClaim.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final String? tempRestartPolicy = tempRestartPolicyJson;
    final String? tempRuntimeClassName = tempRuntimeClassNameJson;
    final String? tempSchedulerName = tempSchedulerNameJson;

    final List<PodSchedulingGate>? tempSchedulingGates =
        tempSchedulingGatesJson != null
            ? List<dynamic>.from(tempSchedulingGatesJson)
                .map(
                  (e) => PodSchedulingGate.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final PodSecurityContext? tempSecurityContext =
        tempSecurityContextJson != null
            ? PodSecurityContext.fromJson(tempSecurityContextJson)
            : null;
    final String? tempServiceAccount = tempServiceAccountJson;
    final String? tempServiceAccountName = tempServiceAccountNameJson;
    final bool? tempSetHostnameAsFQDN = tempSetHostnameAsFQDNJson;
    final bool? tempShareProcessNamespace = tempShareProcessNamespaceJson;
    final String? tempSubdomain = tempSubdomainJson;
    final int? tempTerminationGracePeriodSeconds =
        tempTerminationGracePeriodSecondsJson;

    final List<Toleration>? tempTolerations = tempTolerationsJson != null
        ? List<dynamic>.from(tempTolerationsJson)
            .map(
              (e) => Toleration.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final List<TopologySpreadConstraint>? tempTopologySpreadConstraints =
        tempTopologySpreadConstraintsJson != null
            ? List<dynamic>.from(tempTopologySpreadConstraintsJson)
                .map(
                  (e) => TopologySpreadConstraint.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<Volume>? tempVolumes = tempVolumesJson != null
        ? List<dynamic>.from(tempVolumesJson)
            .map(
              (e) => Volume.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return PodSpec(
      activeDeadlineSeconds: tempActiveDeadlineSeconds,
      affinity: tempAffinity,
      automountServiceAccountToken: tempAutomountServiceAccountToken,
      containers: tempContainers,
      dnsConfig: tempDnsConfig,
      dnsPolicy: tempDnsPolicy,
      enableServiceLinks: tempEnableServiceLinks,
      ephemeralContainers: tempEphemeralContainers,
      hostAliases: tempHostAliases,
      hostIPC: tempHostIPC,
      hostNetwork: tempHostNetwork,
      hostPID: tempHostPID,
      hostUsers: tempHostUsers,
      hostname: tempHostname,
      imagePullSecrets: tempImagePullSecrets,
      initContainers: tempInitContainers,
      nodeName: tempNodeName,
      nodeSelector: tempNodeSelector,
      os: tempOs,
      overhead: tempOverhead,
      preemptionPolicy: tempPreemptionPolicy,
      priority: tempPriority,
      priorityClassName: tempPriorityClassName,
      readinessGates: tempReadinessGates,
      resourceClaims: tempResourceClaims,
      restartPolicy: tempRestartPolicy,
      runtimeClassName: tempRuntimeClassName,
      schedulerName: tempSchedulerName,
      schedulingGates: tempSchedulingGates,
      securityContext: tempSecurityContext,
      serviceAccount: tempServiceAccount,
      serviceAccountName: tempServiceAccountName,
      setHostnameAsFQDN: tempSetHostnameAsFQDN,
      shareProcessNamespace: tempShareProcessNamespace,
      subdomain: tempSubdomain,
      terminationGracePeriodSeconds: tempTerminationGracePeriodSeconds,
      tolerations: tempTolerations,
      topologySpreadConstraints: tempTopologySpreadConstraints,
      volumes: tempVolumes,
    );
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
  final String? dnsPolicy;

  /// EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
  final bool? enableServiceLinks;

  /// List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource.
  final List<EphemeralContainer>? ephemeralContainers;

  /// HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
  final List<HostAlias>? hostAliases;

  /// Use the host's ipc namespace. Optional: Default to false.
  final bool? hostIPC;

  /// Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
  final bool? hostNetwork;

  /// Use the host's pid namespace. Optional: Default to false.
  final bool? hostPID;

  /// Use the host's user namespace. Optional: Default to true. If set to true or not present, the pod will be run in the host user namespace, useful for when the pod needs a feature only available to the host user namespace, such as loading a kernel module with CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is useful for mitigating container breakout vulnerabilities even allowing users to run their containers as root without actually having root privileges on the host. This field is alpha-level and is only honored by servers that enable the UserNamespacesSupport feature.
  final bool? hostUsers;

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
  /// If the OS field is set to windows, following fields must be unset: - spec.hostPID - spec.hostIPC - spec.hostUsers - spec.securityContext.seLinuxOptions - spec.securityContext.seccompProfile - spec.securityContext.fsGroup - spec.securityContext.fsGroupChangePolicy - spec.securityContext.sysctls - spec.shareProcessNamespace - spec.securityContext.runAsUser - spec.securityContext.runAsGroup - spec.securityContext.supplementalGroups - spec.containers\[*\].securityContext.seLinuxOptions - spec.containers\[*\].securityContext.seccompProfile - spec.containers\[*\].securityContext.capabilities - spec.containers\[*\].securityContext.readOnlyRootFilesystem - spec.containers\[*\].securityContext.privileged - spec.containers\[*\].securityContext.allowPrivilegeEscalation - spec.containers\[*\].securityContext.procMount - spec.containers\[*\].securityContext.runAsUser - spec.containers\[*\].securityContext.runAsGroup.
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

  /// ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod is allowed to start. The resources will be made available to those containers which consume them by name.
  ///
  /// This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
  ///
  /// This field is immutable.
  final List<PodResourceClaim>? resourceClaims;

  /// Restart policy for all containers within the pod. One of Always, OnFailure, Never. In some contexts, only a subset of those values may be permitted. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy.
  final String? restartPolicy;

  /// RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class.
  final String? runtimeClassName;

  /// If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
  final String? schedulerName;

  /// SchedulingGates is an opaque list of values that if specified will block scheduling the pod. If schedulingGates is not empty, the pod will stay in the SchedulingGated state and the scheduler will not attempt to schedule the pod.
  ///
  /// SchedulingGates can only be set at pod creation time, and be removed only afterwards.
  ///
  /// This is a beta feature enabled by the PodSchedulingReadiness feature gate.
  final List<PodSchedulingGate>? schedulingGates;

  /// SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
  final PodSecurityContext? securityContext;

  /// DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
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

  /// Converts a [PodSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempActiveDeadlineSeconds = activeDeadlineSeconds;
    final tempAffinity = affinity;
    final tempAutomountServiceAccountToken = automountServiceAccountToken;
    final tempContainers = containers;
    final tempDnsConfig = dnsConfig;
    final tempDnsPolicy = dnsPolicy;
    final tempEnableServiceLinks = enableServiceLinks;
    final tempEphemeralContainers = ephemeralContainers;
    final tempHostAliases = hostAliases;
    final tempHostIPC = hostIPC;
    final tempHostNetwork = hostNetwork;
    final tempHostPID = hostPID;
    final tempHostUsers = hostUsers;
    final tempHostname = hostname;
    final tempImagePullSecrets = imagePullSecrets;
    final tempInitContainers = initContainers;
    final tempNodeName = nodeName;
    final tempNodeSelector = nodeSelector;
    final tempOs = os;
    final tempOverhead = overhead;
    final tempPreemptionPolicy = preemptionPolicy;
    final tempPriority = priority;
    final tempPriorityClassName = priorityClassName;
    final tempReadinessGates = readinessGates;
    final tempResourceClaims = resourceClaims;
    final tempRestartPolicy = restartPolicy;
    final tempRuntimeClassName = runtimeClassName;
    final tempSchedulerName = schedulerName;
    final tempSchedulingGates = schedulingGates;
    final tempSecurityContext = securityContext;
    final tempServiceAccount = serviceAccount;
    final tempServiceAccountName = serviceAccountName;
    final tempSetHostnameAsFQDN = setHostnameAsFQDN;
    final tempShareProcessNamespace = shareProcessNamespace;
    final tempSubdomain = subdomain;
    final tempTerminationGracePeriodSeconds = terminationGracePeriodSeconds;
    final tempTolerations = tolerations;
    final tempTopologySpreadConstraints = topologySpreadConstraints;
    final tempVolumes = volumes;

    if (tempActiveDeadlineSeconds != null) {
      jsonData['activeDeadlineSeconds'] = tempActiveDeadlineSeconds;
    }

    if (tempAffinity != null) {
      jsonData['affinity'] = tempAffinity.toJson();
    }

    if (tempAutomountServiceAccountToken != null) {
      jsonData['automountServiceAccountToken'] =
          tempAutomountServiceAccountToken;
    }

    jsonData['containers'] =
        tempContainers.map((e) => e.toJson()).toList(growable: false);

    if (tempDnsConfig != null) {
      jsonData['dnsConfig'] = tempDnsConfig.toJson();
    }

    if (tempDnsPolicy != null) {
      jsonData['dnsPolicy'] = tempDnsPolicy;
    }

    if (tempEnableServiceLinks != null) {
      jsonData['enableServiceLinks'] = tempEnableServiceLinks;
    }

    if (tempEphemeralContainers != null) {
      jsonData['ephemeralContainers'] = tempEphemeralContainers
          .map((e) => e.toJson())
          .toList(growable: false);
    }

    if (tempHostAliases != null) {
      jsonData['hostAliases'] =
          tempHostAliases.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempHostIPC != null) {
      jsonData['hostIPC'] = tempHostIPC;
    }

    if (tempHostNetwork != null) {
      jsonData['hostNetwork'] = tempHostNetwork;
    }

    if (tempHostPID != null) {
      jsonData['hostPID'] = tempHostPID;
    }

    if (tempHostUsers != null) {
      jsonData['hostUsers'] = tempHostUsers;
    }

    if (tempHostname != null) {
      jsonData['hostname'] = tempHostname;
    }

    if (tempImagePullSecrets != null) {
      jsonData['imagePullSecrets'] =
          tempImagePullSecrets.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempInitContainers != null) {
      jsonData['initContainers'] =
          tempInitContainers.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempNodeName != null) {
      jsonData['nodeName'] = tempNodeName;
    }

    if (tempNodeSelector != null) {
      jsonData['nodeSelector'] = tempNodeSelector;
    }

    if (tempOs != null) {
      jsonData['os'] = tempOs.toJson();
    }

    if (tempOverhead != null) {
      jsonData['overhead'] = tempOverhead;
    }

    if (tempPreemptionPolicy != null) {
      jsonData['preemptionPolicy'] = tempPreemptionPolicy;
    }

    if (tempPriority != null) {
      jsonData['priority'] = tempPriority;
    }

    if (tempPriorityClassName != null) {
      jsonData['priorityClassName'] = tempPriorityClassName;
    }

    if (tempReadinessGates != null) {
      jsonData['readinessGates'] =
          tempReadinessGates.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempResourceClaims != null) {
      jsonData['resourceClaims'] =
          tempResourceClaims.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempRestartPolicy != null) {
      jsonData['restartPolicy'] = tempRestartPolicy;
    }

    if (tempRuntimeClassName != null) {
      jsonData['runtimeClassName'] = tempRuntimeClassName;
    }

    if (tempSchedulerName != null) {
      jsonData['schedulerName'] = tempSchedulerName;
    }

    if (tempSchedulingGates != null) {
      jsonData['schedulingGates'] =
          tempSchedulingGates.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempSecurityContext != null) {
      jsonData['securityContext'] = tempSecurityContext.toJson();
    }

    if (tempServiceAccount != null) {
      jsonData['serviceAccount'] = tempServiceAccount;
    }

    if (tempServiceAccountName != null) {
      jsonData['serviceAccountName'] = tempServiceAccountName;
    }

    if (tempSetHostnameAsFQDN != null) {
      jsonData['setHostnameAsFQDN'] = tempSetHostnameAsFQDN;
    }

    if (tempShareProcessNamespace != null) {
      jsonData['shareProcessNamespace'] = tempShareProcessNamespace;
    }

    if (tempSubdomain != null) {
      jsonData['subdomain'] = tempSubdomain;
    }

    if (tempTerminationGracePeriodSeconds != null) {
      jsonData['terminationGracePeriodSeconds'] =
          tempTerminationGracePeriodSeconds;
    }

    if (tempTolerations != null) {
      jsonData['tolerations'] =
          tempTolerations.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempTopologySpreadConstraints != null) {
      jsonData['topologySpreadConstraints'] = tempTopologySpreadConstraints
          .map((e) => e.toJson())
          .toList(growable: false);
    }

    if (tempVolumes != null) {
      jsonData['volumes'] =
          tempVolumes.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
