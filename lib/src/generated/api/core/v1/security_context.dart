import 'package:kubernetes/src/generated/api/core/v1/capabilities.dart';
import 'package:kubernetes/src/generated/api/core/v1/se_linux_options.dart';
import 'package:kubernetes/src/generated/api/core/v1/seccomp_profile.dart';
import 'package:kubernetes/src/generated/api/core/v1/windows_security_context_options.dart';

/// SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
class SecurityContext {
  /// The main constructor.
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

  /// Creates a SecurityContext from JSON data.
  SecurityContext.fromJson(Map<String, dynamic> json)
      : this(
          allowPrivilegeEscalation: json['allowPrivilegeEscalation'],
          capabilities: json['capabilities'] != null
              ? Capabilities.fromJson(json['capabilities'])
              : null,
          privileged: json['privileged'],
          procMount: json['procMount'],
          readOnlyRootFilesystem: json['readOnlyRootFilesystem'],
          runAsGroup: json['runAsGroup'],
          runAsNonRoot: json['runAsNonRoot'],
          runAsUser: json['runAsUser'],
          seLinuxOptions: json['seLinuxOptions'] != null
              ? SELinuxOptions.fromJson(json['seLinuxOptions'])
              : null,
          seccompProfile: json['seccompProfile'] != null
              ? SeccompProfile.fromJson(json['seccompProfile'])
              : null,
          windowsOptions: json['windowsOptions'] != null
              ? WindowsSecurityContextOptions.fromJson(json['windowsOptions'])
              : null,
        );

  /// Creates a list of SecurityContext from JSON data.
  static List<SecurityContext> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SecurityContext.fromJson(e)).toList();
  }

  /// Converts a SecurityContext instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (allowPrivilegeEscalation != null) {
      jsonData['allowPrivilegeEscalation'] = allowPrivilegeEscalation!;
    }
    if (capabilities != null) {
      jsonData['capabilities'] = capabilities!.toJson();
    }
    if (privileged != null) {
      jsonData['privileged'] = privileged!;
    }
    if (procMount != null) {
      jsonData['procMount'] = procMount!;
    }
    if (readOnlyRootFilesystem != null) {
      jsonData['readOnlyRootFilesystem'] = readOnlyRootFilesystem!;
    }
    if (runAsGroup != null) {
      jsonData['runAsGroup'] = runAsGroup!;
    }
    if (runAsNonRoot != null) {
      jsonData['runAsNonRoot'] = runAsNonRoot!;
    }
    if (runAsUser != null) {
      jsonData['runAsUser'] = runAsUser!;
    }
    if (seLinuxOptions != null) {
      jsonData['seLinuxOptions'] = seLinuxOptions!.toJson();
    }
    if (seccompProfile != null) {
      jsonData['seccompProfile'] = seccompProfile!.toJson();
    }
    if (windowsOptions != null) {
      jsonData['windowsOptions'] = windowsOptions!.toJson();
    }

    return jsonData;
  }

  /// AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN.
  final bool? allowPrivilegeEscalation;

  /// The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.
  final Capabilities? capabilities;

  /// Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false.
  final bool? privileged;

  /// ProcMount denotes the type of proc mount to use for the containers. The default is DefaultProcMount which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled.
  final String? procMount;

  /// Whether this container has a read-only root filesystem. Default is false.
  final bool? readOnlyRootFilesystem;

  /// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final int? runAsGroup;

  /// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final bool? runAsNonRoot;

  /// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final int? runAsUser;

  /// The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final SELinuxOptions? seLinuxOptions;

  /// The seccomp options to use by this container. If seccomp options are provided at both the pod & container level, the container options override the pod options.
  final SeccompProfile? seccompProfile;

  /// The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final WindowsSecurityContextOptions? windowsOptions;
}
