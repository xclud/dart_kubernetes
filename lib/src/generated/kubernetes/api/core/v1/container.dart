import 'package:kubernetes/src/generated/kubernetes/api/core/v1/env_var.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/env_from_source.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/lifecycle.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/probe.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/container_port.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/resource_requirements.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/security_context.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/volume_device.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/volume_mount.dart';

/// A single application container that you want to run within a pod.
class Container {
  /// The main constructor.
  const Container({
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
    this.resources,
    this.securityContext,
    this.startupProbe,
    this.stdin,
    this.stdinOnce,
    this.terminationMessagePath,
    this.terminationMessagePolicy,
    this.tty,
    this.volumeDevices,
    this.volumeMounts,
    this.workingDir,
  });

  /// Creates a Container from JSON data.
  Container.fromJson(Map<String, dynamic> json)
      : this(
          args: json['args'] != null ? List<String>.from(json['args']) : null,
          command: json['command'] != null ? List<String>.from(json['command']) : null,
          env: json['env'] != null ? EnvVar.listFromJson((json['env'] as Iterable).cast<Map<String, dynamic>>()): null,
          envFrom: json['envFrom'] != null ? EnvFromSource.listFromJson((json['envFrom'] as Iterable).cast<Map<String, dynamic>>()): null,
          image: json['image'],
          imagePullPolicy: json['imagePullPolicy'],
          lifecycle: json['lifecycle'] != null ? Lifecycle.fromJson(json['lifecycle']): null,
          livenessProbe: json['livenessProbe'] != null ? Probe.fromJson(json['livenessProbe']): null,
          name: json['name'],
          ports: json['ports'] != null ? ContainerPort.listFromJson((json['ports'] as Iterable).cast<Map<String, dynamic>>()): null,
          readinessProbe: json['readinessProbe'] != null ? Probe.fromJson(json['readinessProbe']): null,
          resources: json['resources'] != null ? ResourceRequirements.fromJson(json['resources']): null,
          securityContext: json['securityContext'] != null ? SecurityContext.fromJson(json['securityContext']): null,
          startupProbe: json['startupProbe'] != null ? Probe.fromJson(json['startupProbe']): null,
          stdin: json['stdin'],
          stdinOnce: json['stdinOnce'],
          terminationMessagePath: json['terminationMessagePath'],
          terminationMessagePolicy: json['terminationMessagePolicy'],
          tty: json['tty'],
          volumeDevices: json['volumeDevices'] != null ? VolumeDevice.listFromJson((json['volumeDevices'] as Iterable).cast<Map<String, dynamic>>()): null,
          volumeMounts: json['volumeMounts'] != null ? VolumeMount.listFromJson((json['volumeMounts'] as Iterable).cast<Map<String, dynamic>>()): null,
          workingDir: json['workingDir'],
        );

  /// Creates a list of Container from JSON data.
  static List<Container> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Container.fromJson(e)).toList();
  }

  /// Converts a Container instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(args != null) { jsonData['args'] = args!; }
    if(command != null) { jsonData['command'] = command!; }
    if(env != null) { jsonData['env'] = env!.map((item) => item.toJson()).toList(); }
    if(envFrom != null) { jsonData['envFrom'] = envFrom!.map((item) => item.toJson()).toList(); }
    if(image != null) { jsonData['image'] = image!; }
    if(imagePullPolicy != null) { jsonData['imagePullPolicy'] = imagePullPolicy!; }
    if(lifecycle != null) { jsonData['lifecycle'] = lifecycle!.toJson(); }
    if(livenessProbe != null) { jsonData['livenessProbe'] = livenessProbe!.toJson(); }
    jsonData['name'] = name;
    if(ports != null) { jsonData['ports'] = ports!.map((item) => item.toJson()).toList(); }
    if(readinessProbe != null) { jsonData['readinessProbe'] = readinessProbe!.toJson(); }
    if(resources != null) { jsonData['resources'] = resources!.toJson(); }
    if(securityContext != null) { jsonData['securityContext'] = securityContext!.toJson(); }
    if(startupProbe != null) { jsonData['startupProbe'] = startupProbe!.toJson(); }
    if(stdin != null) { jsonData['stdin'] = stdin!; }
    if(stdinOnce != null) { jsonData['stdinOnce'] = stdinOnce!; }
    if(terminationMessagePath != null) { jsonData['terminationMessagePath'] = terminationMessagePath!; }
    if(terminationMessagePolicy != null) { jsonData['terminationMessagePolicy'] = terminationMessagePolicy!; }
    if(tty != null) { jsonData['tty'] = tty!; }
    if(volumeDevices != null) { jsonData['volumeDevices'] = volumeDevices!.map((item) => item.toJson()).toList(); }
    if(volumeMounts != null) { jsonData['volumeMounts'] = volumeMounts!.map((item) => item.toJson()).toList(); }
    if(workingDir != null) { jsonData['workingDir'] = workingDir!; }
    

    return jsonData;
  }


  /// Arguments to the entrypoint. The container image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell.
  final List<String>? args;

  /// Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell.
  final List<String>? command;

  /// List of environment variables to set in the container. Cannot be updated.
  final List<EnvVar>? env;

  /// List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
  final List<EnvFromSource>? envFrom;

  /// Container image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.
  final String? image;

  /// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images.
  final String? imagePullPolicy;

  /// Actions that the management system should take in response to container lifecycle events. Cannot be updated.
  final Lifecycle? lifecycle;

  /// Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes.
  final Probe? livenessProbe;

  /// Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
  final String name;

  /// List of ports to expose from the container. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Modifying this array with strategic merge patch may corrupt the data. For more information See https://github.com/kubernetes/kubernetes/issues/108255. Cannot be updated.
  final List<ContainerPort>? ports;

  /// Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes.
  final Probe? readinessProbe;

  /// Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/.
  final ResourceRequirements? resources;

  /// SecurityContext defines the security options the container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext. More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/.
  final SecurityContext? securityContext;

  /// StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes.
  final Probe? startupProbe;

  /// Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
  final bool? stdin;

  /// Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false.
  final bool? stdinOnce;

  /// Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
  final String? terminationMessagePath;

  /// Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
  final String? terminationMessagePolicy;

  /// Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
  final bool? tty;

  /// VolumeDevices is the list of block devices to be used by the container.
  final List<VolumeDevice>? volumeDevices;

  /// Pod volumes to mount into the container's filesystem. Cannot be updated.
  final List<VolumeMount>? volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
  final String? workingDir;
}
