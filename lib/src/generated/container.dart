import 'container_port.dart';
import 'probe.dart';
import 'life_cycle.dart';
import 'other.dart';

class Container {
  Container({
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
