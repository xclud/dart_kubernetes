import 'container_port.dart';
import 'probe.dart';
import 'life_cycle.dart';
import 'env_var.dart';
import 'other.dart';
import 'volume_device.dart';
import 'volume_mount.dart';

class Container {
  const Container({
    this.name,
    this.args,
    this.command,
    this.env,
    this.envFrom,
    this.image,
    this.imagePullPolicy,
    this.lifecycle,
    this.livenessProbe,
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

  Container.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          args: json['args'] != null ? List<String>.from(json['args']) : null,
          command: json['command'] != null
              ? List<String>.from(json['command'])
              : null,
          env: json['env'] != null
              ? EnvVar.listFromJson(
                  (json['env'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          //envFrom: json['envFrom'],
          image: json['image'],
          imagePullPolicy: json['imagePullPolicy'],
          //lifecycle: json['lifecycle'],
          //livenessProbe: json['livenessProbe'],
          ports: json['ports'] != null
              ? ContainerPort.listFromJson(
                  (json['ports'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          //readinessProbe: json['readinessProbe'],
          //resources: json['resources'],
          //securityContext: json['securityContext'],
          //startupProbe: json['startupProbe'],
          stdin: json['stdin'],
          stdinOnce: json['stdinOnce'],
          terminationMessagePath: json['terminationMessagePath'],
          terminationMessagePolicy: json['terminationMessagePolicy'],
          tty: json['tty'],
          volumeDevices: json['volumeDevices'] != null
              ? VolumeDevice.listFromJson((json['volumeDevices'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : null,
          volumeMounts: json['volumeMounts'] != null
              ? VolumeMount.listFromJson((json['volumeMounts'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : null,
          workingDir: json['workingDir'],
        );

  static List<Container> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Container.fromJson(e)).toList();
  }

  final String? name;
  final List<String>? args;
  final List<String>? command;
  final List<EnvVar>? env;
  final List<EnvFromSource>? envFrom;
  final String? image;
  final String? imagePullPolicy;
  final Lifecycle? lifecycle;
  final Probe? livenessProbe;
  final List<ContainerPort>? ports;
  final Probe? readinessProbe;
  final ResourceRequirements? resources;
  final SecurityContext? securityContext;
  final Probe? startupProbe;
  final bool? stdin;
  final bool? stdinOnce;
  final String? terminationMessagePath;
  final String? terminationMessagePolicy;
  final bool? tty;
  final List<VolumeDevice>? volumeDevices;
  final List<VolumeMount>? volumeMounts;
  final String? workingDir;
}
