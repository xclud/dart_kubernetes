import 'package:kubernetes/src/generated/kubernetes/api/core/v1/se_linux_options.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/seccomp_profile.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/sysctl.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/windows_security_context_options.dart';

/// PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
class PodSecurityContext {
  /// The main constructor.
  const PodSecurityContext({
    this.fsGroup,
    this.fsGroupChangePolicy,
    this.runAsGroup,
    this.runAsNonRoot,
    this.runAsUser,
    this.seLinuxOptions,
    this.seccompProfile,
    this.supplementalGroups,
    this.sysctls,
    this.windowsOptions,
  });

  /// Creates a PodSecurityContext from JSON data.
  PodSecurityContext.fromJson(Map<String, dynamic> json)
      : this(
          fsGroup: json['fsGroup'],
          fsGroupChangePolicy: json['fsGroupChangePolicy'],
          runAsGroup: json['runAsGroup'],
          runAsNonRoot: json['runAsNonRoot'],
          runAsUser: json['runAsUser'],
          seLinuxOptions: json['seLinuxOptions'] != null ? SELinuxOptions.fromJson(json['seLinuxOptions']): null,
          seccompProfile: json['seccompProfile'] != null ? SeccompProfile.fromJson(json['seccompProfile']): null,
          supplementalGroups: json['supplementalGroups'] != null ? List<int>.from(json['supplementalGroups']) : null,
          sysctls: json['sysctls'] != null ? Sysctl.listFromJson((json['sysctls'] as Iterable).cast<Map<String, dynamic>>()): null,
          windowsOptions: json['windowsOptions'] != null ? WindowsSecurityContextOptions.fromJson(json['windowsOptions']): null,
        );

  /// Creates a list of PodSecurityContext from JSON data.
  static List<PodSecurityContext> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodSecurityContext.fromJson(e)).toList();
  }

  /// Converts a PodSecurityContext instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(fsGroup != null) { jsonData['fsGroup'] = fsGroup!; }
    if(fsGroupChangePolicy != null) { jsonData['fsGroupChangePolicy'] = fsGroupChangePolicy!; }
    if(runAsGroup != null) { jsonData['runAsGroup'] = runAsGroup!; }
    if(runAsNonRoot != null) { jsonData['runAsNonRoot'] = runAsNonRoot!; }
    if(runAsUser != null) { jsonData['runAsUser'] = runAsUser!; }
    if(seLinuxOptions != null) { jsonData['seLinuxOptions'] = seLinuxOptions!.toJson(); }
    if(seccompProfile != null) { jsonData['seccompProfile'] = seccompProfile!.toJson(); }
    if(supplementalGroups != null) { jsonData['supplementalGroups'] = supplementalGroups!; }
    if(sysctls != null) { jsonData['sysctls'] = sysctls!.map((item) => item.toJson()).toList(); }
    if(windowsOptions != null) { jsonData['windowsOptions'] = windowsOptions!.toJson(); }
    

    return jsonData;
  }


  /// A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
/// 
/// 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
/// 
/// If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
  final int? fsGroup;

  /// FsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are "OnRootMismatch" and "Always". If not specified, "Always" is used. Note that this field cannot be set when spec.os.name is windows.
  final String? fsGroupChangePolicy;

  /// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
  final int? runAsGroup;

  /// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final bool? runAsNonRoot;

  /// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
  final int? runAsUser;

  /// The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows.
  final SELinuxOptions? seLinuxOptions;

  /// The seccomp options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows.
  final SeccompProfile? seccompProfile;

  /// A list of groups applied to the first process run in each container, in addition to the container's primary GID, the fsGroup (if specified), and group memberships defined in the container image for the uid of the container process. If unspecified, no additional groups are added to any container. Note that group memberships defined in the container image for the uid of the container process are still effective, even if they are not included in this list. Note that this field cannot be set when spec.os.name is windows.
  final List<int>? supplementalGroups;

  /// Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows.
  final List<Sysctl>? sysctls;

  /// The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux.
  final WindowsSecurityContextOptions? windowsOptions;
}
