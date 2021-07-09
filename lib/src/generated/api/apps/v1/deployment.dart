import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/apps/v1/deployment_spec.dart';
import 'package:kubernetes/src/generated/api/apps/v1/deployment_status.dart';

/// Deployment enables declarative updates for Pods and ReplicaSets.
class Deployment {
  /// The main constructor.
  const Deployment({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a Deployment from JSON data.
  Deployment.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? DeploymentSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? DeploymentStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of Deployment from JSON data.
  static List<Deployment> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Deployment.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Specification of the desired behavior of the Deployment.
  final DeploymentSpec? spec;

  /// Most recently observed status of the Deployment.
  final DeploymentStatus? status;
}
