// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
class PodSecurityContext {
  /// Default constructor.
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

  /// Creates a [PodSecurityContext] from JSON data.
  factory PodSecurityContext.fromJson(Map<String, dynamic> json) {
    final tempFsGroupJson = json['fsGroup'];
    final tempFsGroupChangePolicyJson = json['fsGroupChangePolicy'];
    final tempRunAsGroupJson = json['runAsGroup'];
    final tempRunAsNonRootJson = json['runAsNonRoot'];
    final tempRunAsUserJson = json['runAsUser'];
    final tempSeLinuxOptionsJson = json['seLinuxOptions'];
    final tempSeccompProfileJson = json['seccompProfile'];
    final tempSupplementalGroupsJson = json['supplementalGroups'];
    final tempSysctlsJson = json['sysctls'];
    final tempWindowsOptionsJson = json['windowsOptions'];

    final tempFsGroup = tempFsGroupJson;
    final tempFsGroupChangePolicy = tempFsGroupChangePolicyJson;
    final tempRunAsGroup = tempRunAsGroupJson;
    final tempRunAsNonRoot = tempRunAsNonRootJson;
    final tempRunAsUser = tempRunAsUserJson;
    final tempSeLinuxOptions = tempSeLinuxOptionsJson != null
        ? SELinuxOptions.fromJson(tempSeLinuxOptionsJson)
        : null;
    final tempSeccompProfile = tempSeccompProfileJson != null
        ? SeccompProfile.fromJson(tempSeccompProfileJson)
        : null;
    final tempSupplementalGroups = tempSupplementalGroupsJson;
    final tempSysctls = tempSysctlsJson;
    final tempWindowsOptions = tempWindowsOptionsJson != null
        ? WindowsSecurityContextOptions.fromJson(tempWindowsOptionsJson)
        : null;

    return PodSecurityContext(
      fsGroup: tempFsGroup,
      fsGroupChangePolicy: tempFsGroupChangePolicy,
      runAsGroup: tempRunAsGroup,
      runAsNonRoot: tempRunAsNonRoot,
      runAsUser: tempRunAsUser,
      seLinuxOptions: tempSeLinuxOptions,
      seccompProfile: tempSeccompProfile,
      supplementalGroups: tempSupplementalGroups,
      sysctls: tempSysctls,
      windowsOptions: tempWindowsOptions,
    );
  }

  /// A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
  ///
  /// 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
  ///
  /// If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
  final int? fsGroup;

  /// fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are "OnRootMismatch" and "Always". If not specified, "Always" is used. Note that this field cannot be set when spec.os.name is windows.
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

  /// Converts a [PodSecurityContext] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsGroup = fsGroup;
    final tempFsGroupChangePolicy = fsGroupChangePolicy;
    final tempRunAsGroup = runAsGroup;
    final tempRunAsNonRoot = runAsNonRoot;
    final tempRunAsUser = runAsUser;
    final tempSeLinuxOptions = seLinuxOptions;
    final tempSeccompProfile = seccompProfile;
    final tempSupplementalGroups = supplementalGroups;
    final tempSysctls = sysctls;
    final tempWindowsOptions = windowsOptions;

    if (tempFsGroup != null) {
      jsonData['fsGroup'] = tempFsGroup;
    }

    if (tempFsGroupChangePolicy != null) {
      jsonData['fsGroupChangePolicy'] = tempFsGroupChangePolicy;
    }

    if (tempRunAsGroup != null) {
      jsonData['runAsGroup'] = tempRunAsGroup;
    }

    if (tempRunAsNonRoot != null) {
      jsonData['runAsNonRoot'] = tempRunAsNonRoot;
    }

    if (tempRunAsUser != null) {
      jsonData['runAsUser'] = tempRunAsUser;
    }

    if (tempSeLinuxOptions != null) {
      jsonData['seLinuxOptions'] = tempSeLinuxOptions.toJson();
    }

    if (tempSeccompProfile != null) {
      jsonData['seccompProfile'] = tempSeccompProfile.toJson();
    }

    if (tempSupplementalGroups != null) {
      jsonData['supplementalGroups'] = tempSupplementalGroups;
    }

    if (tempSysctls != null) {
      jsonData['sysctls'] = tempSysctls;
    }

    if (tempWindowsOptions != null) {
      jsonData['windowsOptions'] = tempWindowsOptions.toJson();
    }

    return jsonData;
  }
}
