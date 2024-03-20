// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// An EphemeralContainer is a temporary container that you may add to an existing Pod for user-initiated activities such as debugging. Ephemeral containers have no resource or scheduling guarantees, and they will not be restarted when they exit or when a Pod is removed or restarted. The kubelet may evict a Pod if an ephemeral container causes the Pod to exceed its resource allocation.
///
/// To add an ephemeral container, use the ephemeralcontainers subresource of an existing Pod. Ephemeral containers may not be removed or restarted.
class EphemeralContainer {
  /// Default constructor.
  const EphemeralContainer({
    this.args,
    this.command,
    this.env,
    this.envFrom,
    this.image,
    this.imagePullPolicy,
    this.lifecycle,
    this.livenessProbe,
    required this.name,
    this.ports,
    this.readinessProbe,
    this.resizePolicy,
    this.resources,
    this.securityContext,
    this.startupProbe,
    this.stdin,
    this.stdinOnce,
    this.targetContainerName,
    this.terminationMessagePath,
    this.terminationMessagePolicy,
    this.tty,
    this.volumeDevices,
    this.volumeMounts,
    this.workingDir,
  });

  /// Creates a [EphemeralContainer] from JSON data.
  factory EphemeralContainer.fromJson(Map<String, dynamic> json) {
    final tempArgsJson = json['args'];
    final tempCommandJson = json['command'];
    final tempEnvJson = json['env'];
    final tempEnvFromJson = json['envFrom'];
    final tempImageJson = json['image'];
    final tempImagePullPolicyJson = json['imagePullPolicy'];
    final tempLifecycleJson = json['lifecycle'];
    final tempLivenessProbeJson = json['livenessProbe'];
    final tempNameJson = json['name'];
    final tempPortsJson = json['ports'];
    final tempReadinessProbeJson = json['readinessProbe'];
    final tempResizePolicyJson = json['resizePolicy'];
    final tempResourcesJson = json['resources'];
    final tempSecurityContextJson = json['securityContext'];
    final tempStartupProbeJson = json['startupProbe'];
    final tempStdinJson = json['stdin'];
    final tempStdinOnceJson = json['stdinOnce'];
    final tempTargetContainerNameJson = json['targetContainerName'];
    final tempTerminationMessagePathJson = json['terminationMessagePath'];
    final tempTerminationMessagePolicyJson = json['terminationMessagePolicy'];
    final tempTtyJson = json['tty'];
    final tempVolumeDevicesJson = json['volumeDevices'];
    final tempVolumeMountsJson = json['volumeMounts'];
    final tempWorkingDirJson = json['workingDir'];

    final List<String>? tempArgs =
        tempArgsJson != null ? List<String>.from(tempArgsJson) : null;
    final List<String>? tempCommand =
        tempCommandJson != null ? List<String>.from(tempCommandJson) : null;

    final List<EnvVar>? tempEnv = tempEnvJson != null
        ? List<dynamic>.from(tempEnvJson)
            .map(
              (e) => EnvVar.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final List<EnvFromSource>? tempEnvFrom = tempEnvFromJson != null
        ? List<dynamic>.from(tempEnvFromJson)
            .map(
              (e) => EnvFromSource.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final String? tempImage = tempImageJson;
    final String? tempImagePullPolicy = tempImagePullPolicyJson;
    final Lifecycle? tempLifecycle = tempLifecycleJson != null
        ? Lifecycle.fromJson(tempLifecycleJson)
        : null;
    final Probe? tempLivenessProbe = tempLivenessProbeJson != null
        ? Probe.fromJson(tempLivenessProbeJson)
        : null;
    final String tempName = tempNameJson;

    final List<ContainerPort>? tempPorts = tempPortsJson != null
        ? List<dynamic>.from(tempPortsJson)
            .map(
              (e) => ContainerPort.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final Probe? tempReadinessProbe = tempReadinessProbeJson != null
        ? Probe.fromJson(tempReadinessProbeJson)
        : null;

    final List<ContainerResizePolicy>? tempResizePolicy =
        tempResizePolicyJson != null
            ? List<dynamic>.from(tempResizePolicyJson)
                .map(
                  (e) => ContainerResizePolicy.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final ResourceRequirements? tempResources = tempResourcesJson != null
        ? ResourceRequirements.fromJson(tempResourcesJson)
        : null;
    final SecurityContext? tempSecurityContext = tempSecurityContextJson != null
        ? SecurityContext.fromJson(tempSecurityContextJson)
        : null;
    final Probe? tempStartupProbe = tempStartupProbeJson != null
        ? Probe.fromJson(tempStartupProbeJson)
        : null;
    final bool? tempStdin = tempStdinJson;
    final bool? tempStdinOnce = tempStdinOnceJson;
    final String? tempTargetContainerName = tempTargetContainerNameJson;
    final String? tempTerminationMessagePath = tempTerminationMessagePathJson;
    final String? tempTerminationMessagePolicy =
        tempTerminationMessagePolicyJson;
    final bool? tempTty = tempTtyJson;

    final List<VolumeDevice>? tempVolumeDevices = tempVolumeDevicesJson != null
        ? List<dynamic>.from(tempVolumeDevicesJson)
            .map(
              (e) => VolumeDevice.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final List<VolumeMount>? tempVolumeMounts = tempVolumeMountsJson != null
        ? List<dynamic>.from(tempVolumeMountsJson)
            .map(
              (e) => VolumeMount.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final String? tempWorkingDir = tempWorkingDirJson;

    return EphemeralContainer(
      args: tempArgs,
      command: tempCommand,
      env: tempEnv,
      envFrom: tempEnvFrom,
      image: tempImage,
      imagePullPolicy: tempImagePullPolicy,
      lifecycle: tempLifecycle,
      livenessProbe: tempLivenessProbe,
      name: tempName,
      ports: tempPorts,
      readinessProbe: tempReadinessProbe,
      resizePolicy: tempResizePolicy,
      resources: tempResources,
      securityContext: tempSecurityContext,
      startupProbe: tempStartupProbe,
      stdin: tempStdin,
      stdinOnce: tempStdinOnce,
      targetContainerName: tempTargetContainerName,
      terminationMessagePath: tempTerminationMessagePath,
      terminationMessagePolicy: tempTerminationMessagePolicy,
      tty: tempTty,
      volumeDevices: tempVolumeDevices,
      volumeMounts: tempVolumeMounts,
      workingDir: tempWorkingDir,
    );
  }

  /// Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell.
  final List<String>? args;

  /// Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell.
  final List<String>? command;

  /// List of environment variables to set in the container. Cannot be updated.
  final List<EnvVar>? env;

  /// List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  final List<EnvFromSource>? envFrom;

  /// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images.
  final String? image;

  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images.
  final String? imagePullPolicy;

  /// Lifecycle is not allowed for ephemeral containers.
  final Lifecycle? lifecycle;

  /// Probes are not allowed for ephemeral containers.
  final Probe? livenessProbe;

  /// Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
  final String name;

  /// Ports are not allowed for ephemeral containers.
  final List<ContainerPort>? ports;

  /// Probes are not allowed for ephemeral containers.
  final Probe? readinessProbe;

  /// Resources resize policy for the container.
  final List<ContainerResizePolicy>? resizePolicy;

  /// Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod.
  final ResourceRequirements? resources;

  /// Optional: SecurityContext defines the security options the ephemeral container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext.
  final SecurityContext? securityContext;

  /// Probes are not allowed for ephemeral containers.
  final Probe? startupProbe;

  /// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  final bool? stdin;

  /// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false.
  final bool? stdinOnce;

  /// If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container uses the namespaces configured in the Pod spec.
  ///
  /// The container runtime must implement support for this feature. If the runtime does not support namespace targeting then the result of setting this field is undefined.
  final String? targetContainerName;

  /// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  final String? terminationMessagePath;

  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  final String? terminationMessagePolicy;

  /// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  final bool? tty;

  /// volumeDevices is the list of block devices to be used by the container.
  final List<VolumeDevice>? volumeDevices;

  /// Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for ephemeral containers. Cannot be updated.
  final List<VolumeMount>? volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  final String? workingDir;

  /// Converts a [EphemeralContainer] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempArgs = args;
    final tempCommand = command;
    final tempEnv = env;
    final tempEnvFrom = envFrom;
    final tempImage = image;
    final tempImagePullPolicy = imagePullPolicy;
    final tempLifecycle = lifecycle;
    final tempLivenessProbe = livenessProbe;
    final tempName = name;
    final tempPorts = ports;
    final tempReadinessProbe = readinessProbe;
    final tempResizePolicy = resizePolicy;
    final tempResources = resources;
    final tempSecurityContext = securityContext;
    final tempStartupProbe = startupProbe;
    final tempStdin = stdin;
    final tempStdinOnce = stdinOnce;
    final tempTargetContainerName = targetContainerName;
    final tempTerminationMessagePath = terminationMessagePath;
    final tempTerminationMessagePolicy = terminationMessagePolicy;
    final tempTty = tty;
    final tempVolumeDevices = volumeDevices;
    final tempVolumeMounts = volumeMounts;
    final tempWorkingDir = workingDir;

    if (tempArgs != null) {
      jsonData['args'] = tempArgs;
    }

    if (tempCommand != null) {
      jsonData['command'] = tempCommand;
    }

    if (tempEnv != null) {
      jsonData['env'] = tempEnv.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempEnvFrom != null) {
      jsonData['envFrom'] =
          tempEnvFrom.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempImage != null) {
      jsonData['image'] = tempImage;
    }

    if (tempImagePullPolicy != null) {
      jsonData['imagePullPolicy'] = tempImagePullPolicy;
    }

    if (tempLifecycle != null) {
      jsonData['lifecycle'] = tempLifecycle.toJson();
    }

    if (tempLivenessProbe != null) {
      jsonData['livenessProbe'] = tempLivenessProbe.toJson();
    }

    jsonData['name'] = tempName;

    if (tempPorts != null) {
      jsonData['ports'] =
          tempPorts.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempReadinessProbe != null) {
      jsonData['readinessProbe'] = tempReadinessProbe.toJson();
    }

    if (tempResizePolicy != null) {
      jsonData['resizePolicy'] =
          tempResizePolicy.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempResources != null) {
      jsonData['resources'] = tempResources.toJson();
    }

    if (tempSecurityContext != null) {
      jsonData['securityContext'] = tempSecurityContext.toJson();
    }

    if (tempStartupProbe != null) {
      jsonData['startupProbe'] = tempStartupProbe.toJson();
    }

    if (tempStdin != null) {
      jsonData['stdin'] = tempStdin;
    }

    if (tempStdinOnce != null) {
      jsonData['stdinOnce'] = tempStdinOnce;
    }

    if (tempTargetContainerName != null) {
      jsonData['targetContainerName'] = tempTargetContainerName;
    }

    if (tempTerminationMessagePath != null) {
      jsonData['terminationMessagePath'] = tempTerminationMessagePath;
    }

    if (tempTerminationMessagePolicy != null) {
      jsonData['terminationMessagePolicy'] = tempTerminationMessagePolicy;
    }

    if (tempTty != null) {
      jsonData['tty'] = tempTty;
    }

    if (tempVolumeDevices != null) {
      jsonData['volumeDevices'] =
          tempVolumeDevices.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempVolumeMounts != null) {
      jsonData['volumeMounts'] =
          tempVolumeMounts.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempWorkingDir != null) {
      jsonData['workingDir'] = tempWorkingDir;
    }

    return jsonData;
  }
}
