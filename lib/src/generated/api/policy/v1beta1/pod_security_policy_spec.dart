import 'package:kubernetes/src/generated/api/policy/v1beta1/allowed_csi_driver.dart';
import 'package:kubernetes/src/generated/api/policy/v1beta1/allowed_flex_volume.dart';
import 'package:kubernetes/src/generated/api/policy/v1beta1/allowed_host_path.dart';
import 'package:kubernetes/src/generated/api/policy/v1beta1/fs_group_strategy_options.dart';
import 'package:kubernetes/src/generated/api/policy/v1beta1/host_port_range.dart';
import 'package:kubernetes/src/generated/api/policy/v1beta1/run_as_group_strategy_options.dart';
import 'package:kubernetes/src/generated/api/policy/v1beta1/run_as_user_strategy_options.dart';
import 'package:kubernetes/src/generated/api/policy/v1beta1/runtime_class_strategy_options.dart';
import 'package:kubernetes/src/generated/api/policy/v1beta1/se_linux_strategy_options.dart';
import 'package:kubernetes/src/generated/api/policy/v1beta1/supplemental_groups_strategy_options.dart';

/// PodSecurityPolicySpec defines the policy enforced.
class PodSecurityPolicySpec {
  /// The main constructor.
  const PodSecurityPolicySpec({
    this.allowPrivilegeEscalation,
    this.allowedCSIDrivers,
    this.allowedCapabilities,
    this.allowedFlexVolumes,
    this.allowedHostPaths,
    this.allowedProcMountTypes,
    this.allowedUnsafeSysctls,
    this.defaultAddCapabilities,
    this.defaultAllowPrivilegeEscalation,
    this.forbiddenSysctls,
    required this.fsGroup,
    this.hostIPC,
    this.hostNetwork,
    this.hostPID,
    this.hostPorts,
    this.privileged,
    this.readOnlyRootFilesystem,
    this.requiredDropCapabilities,
    this.runAsGroup,
    required this.runAsUser,
    this.runtimeClass,
    required this.seLinux,
    required this.supplementalGroups,
    this.volumes,
  });

  /// Creates a PodSecurityPolicySpec from JSON data.
  PodSecurityPolicySpec.fromJson(Map<String, dynamic> json)
      : this(
          allowPrivilegeEscalation: json['allowPrivilegeEscalation'],
          allowedCSIDrivers: json['allowedCSIDrivers'] != null
              ? AllowedCSIDriver.listFromJson(
                  (json['allowedCSIDrivers'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          allowedCapabilities: json['allowedCapabilities'] != null
              ? List<String>.from(json['allowedCapabilities'])
              : null,
          allowedFlexVolumes: json['allowedFlexVolumes'] != null
              ? AllowedFlexVolume.listFromJson(
                  (json['allowedFlexVolumes'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          allowedHostPaths: json['allowedHostPaths'] != null
              ? AllowedHostPath.listFromJson(
                  (json['allowedHostPaths'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          allowedProcMountTypes: json['allowedProcMountTypes'] != null
              ? List<String>.from(json['allowedProcMountTypes'])
              : null,
          allowedUnsafeSysctls: json['allowedUnsafeSysctls'] != null
              ? List<String>.from(json['allowedUnsafeSysctls'])
              : null,
          defaultAddCapabilities: json['defaultAddCapabilities'] != null
              ? List<String>.from(json['defaultAddCapabilities'])
              : null,
          defaultAllowPrivilegeEscalation:
              json['defaultAllowPrivilegeEscalation'],
          forbiddenSysctls: json['forbiddenSysctls'] != null
              ? List<String>.from(json['forbiddenSysctls'])
              : null,
          fsGroup: FSGroupStrategyOptions.fromJson(json['fsGroup']),
          hostIPC: json['hostIPC'],
          hostNetwork: json['hostNetwork'],
          hostPID: json['hostPID'],
          hostPorts: json['hostPorts'] != null
              ? HostPortRange.listFromJson(
                  (json['hostPorts'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          privileged: json['privileged'],
          readOnlyRootFilesystem: json['readOnlyRootFilesystem'],
          requiredDropCapabilities: json['requiredDropCapabilities'] != null
              ? List<String>.from(json['requiredDropCapabilities'])
              : null,
          runAsGroup: json['runAsGroup'] != null
              ? RunAsGroupStrategyOptions.fromJson(json['runAsGroup'])
              : null,
          runAsUser: RunAsUserStrategyOptions.fromJson(json['runAsUser']),
          runtimeClass: json['runtimeClass'] != null
              ? RuntimeClassStrategyOptions.fromJson(json['runtimeClass'])
              : null,
          seLinux: SELinuxStrategyOptions.fromJson(json['seLinux']),
          supplementalGroups: SupplementalGroupsStrategyOptions.fromJson(
              json['supplementalGroups']),
          volumes: json['volumes'] != null
              ? List<String>.from(json['volumes'])
              : null,
        );

  /// Creates a list of PodSecurityPolicySpec from JSON data.
  static List<PodSecurityPolicySpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodSecurityPolicySpec.fromJson(e)).toList();
  }

  /// allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
  final bool? allowPrivilegeEscalation;

  /// AllowedCSIDrivers is an allowlist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes. This is a beta field, and is only honored if the API server enables the CSIInlineVolume feature gate.
  final List<AllowedCSIDriver>? allowedCSIDrivers;

  /// allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
  final List<String>? allowedCapabilities;

  /// allowedFlexVolumes is an allowlist of Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
  final List<AllowedFlexVolume>? allowedFlexVolumes;

  /// allowedHostPaths is an allowlist of host paths. Empty indicates that all host paths may be used.
  final List<AllowedHostPath>? allowedHostPaths;

  /// AllowedProcMountTypes is an allowlist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.
  final List<String>? allowedProcMountTypes;

  /// allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to allowlist all allowed unsafe sysctls explicitly to avoid rejection.
  ///
  /// Examples: e.g. "foo/*" allows "foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.
  final List<String>? allowedUnsafeSysctls;

  /// defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.
  final List<String>? defaultAddCapabilities;

  /// defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
  final bool? defaultAllowPrivilegeEscalation;

  /// forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.
  ///
  /// Examples: e.g. "foo/*" forbids "foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.
  final List<String>? forbiddenSysctls;

  /// fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.
  final FSGroupStrategyOptions fsGroup;

  /// hostIPC determines if the policy allows the use of HostIPC in the pod spec.
  final bool? hostIPC;

  /// hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
  final bool? hostNetwork;

  /// hostPID determines if the policy allows the use of HostPID in the pod spec.
  final bool? hostPID;

  /// hostPorts determines which host port ranges are allowed to be exposed.
  final List<HostPortRange>? hostPorts;

  /// privileged determines if a pod can request to be run as privileged.
  final bool? privileged;

  /// readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
  final bool? readOnlyRootFilesystem;

  /// requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
  final List<String>? requiredDropCapabilities;

  /// RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled.
  final RunAsGroupStrategyOptions? runAsGroup;

  /// runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
  final RunAsUserStrategyOptions runAsUser;

  /// runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled.
  final RuntimeClassStrategyOptions? runtimeClass;

  /// seLinux is the strategy that will dictate the allowable labels that may be set.
  final SELinuxStrategyOptions seLinux;

  /// supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
  final SupplementalGroupsStrategyOptions supplementalGroups;

  /// volumes is an allowlist of volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
  final List<String>? volumes;
}
