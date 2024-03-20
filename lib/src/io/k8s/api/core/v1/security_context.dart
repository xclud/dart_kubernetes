// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
class SecurityContext {
  /// Default constructor.
  const SecurityContext({
    this.allowPrivilegeEscalation,
    this.capabilities,
    this.privileged,
    this.procMount,
    this.readOnlyRootFilesystem,
    this.runAsGroup,
    this.runAsNonRoot,
    this.runAsUser,
    this.seLinuxOptions,
    this.seccompProfile,
    this.windowsOptions,
  });

  /// Creates a [SecurityContext] from JSON data.
  factory SecurityContext.fromJson(Map<String, dynamic> json) {
    final tempAllowPrivilegeEscalationJson = json['allowPrivilegeEscalation'];
    final tempCapabilitiesJson = json['capabilities'];
    final tempPrivilegedJson = json['privileged'];
    final tempProcMountJson = json['procMount'];
    final tempReadOnlyRootFilesystemJson = json['readOnlyRootFilesystem'];
    final tempRunAsGroupJson = json['runAsGroup'];
    final tempRunAsNonRootJson = json['runAsNonRoot'];
    final tempRunAsUserJson = json['runAsUser'];
    final tempSeLinuxOptionsJson = json['seLinuxOptions'];
    final tempSeccompProfileJson = json['seccompProfile'];
    final tempWindowsOptionsJson = json['windowsOptions'];

    final bool? tempAllowPrivilegeEscalation = tempAllowPrivilegeEscalationJson;
    final Capabilities? tempCapabilities = tempCapabilitiesJson != null
        ? Capabilities.fromJson(tempCapabilitiesJson)
        : null;
    final bool? tempPrivileged = tempPrivilegedJson;
    final String? tempProcMount = tempProcMountJson;
    final bool? tempReadOnlyRootFilesystem = tempReadOnlyRootFilesystemJson;
    final int? tempRunAsGroup = tempRunAsGroupJson;
    final bool? tempRunAsNonRoot = tempRunAsNonRootJson;
    final int? tempRunAsUser = tempRunAsUserJson;
    final SELinuxOptions? tempSeLinuxOptions = tempSeLinuxOptionsJson != null
        ? SELinuxOptions.fromJson(tempSeLinuxOptionsJson)
        : null;
    final SeccompProfile? tempSeccompProfile = tempSeccompProfileJson != null
        ? SeccompProfile.fromJson(tempSeccompProfileJson)
        : null;
    final WindowsSecurityContextOptions? tempWindowsOptions =
        tempWindowsOptionsJson != null
            ? WindowsSecurityContextOptions.fromJson(tempWindowsOptionsJson)
            : null;

    return SecurityContext(
      allowPrivilegeEscalation: tempAllowPrivilegeEscalation,
      capabilities: tempCapabilities,
      privileged: tempPrivileged,
      procMount: tempProcMount,
      readOnlyRootFilesystem: tempReadOnlyRootFilesystem,
      runAsGroup: tempRunAsGroup,
      runAsNonRoot: tempRunAsNonRoot,
      runAsUser: tempRunAsUser,
      seLinuxOptions: tempSeLinuxOptions,
      seccompProfile: tempSeccompProfile,
      windowsOptions: tempWindowsOptions,
    );
  }

  /// AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows.
  final bool? allowPrivilegeEscalation;

  /// The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. Note that this field cannot be set when spec.os.name is windows.
  final Capabilities? capabilities;

  /// Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows.
  final bool? privileged;

  /// procMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows.
  final String? procMount;

  /// Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows.
  final bool? readOnlyRootFilesystem;

  /// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  final int? runAsGroup;

  /// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final bool? runAsNonRoot;

  /// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  final int? runAsUser;

  /// The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  final SELinuxOptions? seLinuxOptions;

  /// The seccomp options to use by this container. If seccomp options are provided at both the pod & container level, the container options override the pod options. Note that this field cannot be set when spec.os.name is windows.
  final SeccompProfile? seccompProfile;

  /// The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux.
  final WindowsSecurityContextOptions? windowsOptions;

  /// Converts a [SecurityContext] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAllowPrivilegeEscalation = allowPrivilegeEscalation;
    final tempCapabilities = capabilities;
    final tempPrivileged = privileged;
    final tempProcMount = procMount;
    final tempReadOnlyRootFilesystem = readOnlyRootFilesystem;
    final tempRunAsGroup = runAsGroup;
    final tempRunAsNonRoot = runAsNonRoot;
    final tempRunAsUser = runAsUser;
    final tempSeLinuxOptions = seLinuxOptions;
    final tempSeccompProfile = seccompProfile;
    final tempWindowsOptions = windowsOptions;

    if (tempAllowPrivilegeEscalation != null) {
      jsonData['allowPrivilegeEscalation'] = tempAllowPrivilegeEscalation;
    }

    if (tempCapabilities != null) {
      jsonData['capabilities'] = tempCapabilities.toJson();
    }

    if (tempPrivileged != null) {
      jsonData['privileged'] = tempPrivileged;
    }

    if (tempProcMount != null) {
      jsonData['procMount'] = tempProcMount;
    }

    if (tempReadOnlyRootFilesystem != null) {
      jsonData['readOnlyRootFilesystem'] = tempReadOnlyRootFilesystem;
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

    if (tempWindowsOptions != null) {
      jsonData['windowsOptions'] = tempWindowsOptions.toJson();
    }

    return jsonData;
  }
}
