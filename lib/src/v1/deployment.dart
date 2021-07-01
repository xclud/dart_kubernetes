import 'deployment_spec.dart';
import 'deployment_status.dart';
import 'object_meta.dart';
import 'pod.dart';
import 'replicaset.dart';

/// Deployment enables declarative updates for [Pod]s and [ReplicaSet]s.
class Deployment {
  const Deployment({
    this.apiVersion,
    this.kind,
    required this.metadata,
    this.spec,
    this.status,
  });

  Deployment.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: ObjectMeta.fromJson(json['metadata']),
          spec: json['spec'] != null
              ? DeploymentSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? DeploymentStatus.fromJson(json['status'])
              : null,
        );

  static List<Deployment> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Deployment.fromJson(e)).toList();
  }

  final String? apiVersion;
  final String? kind;
  final ObjectMeta metadata;
  final DeploymentSpec? spec;
  final DeploymentStatus? status;
}
