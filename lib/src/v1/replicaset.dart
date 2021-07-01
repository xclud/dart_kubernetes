import 'object_meta.dart';
import 'replicaset_spec.dart';
import 'replicaset_status.dart';
import 'pod.dart';

/// ReplicaSet ensures that a specified number of [Pod] replicas are running
/// at any given time.
class ReplicaSet {
  const ReplicaSet({
    this.apiVersion,
    this.kind,
    required this.metadata,
    this.spec,
    this.status,
  });

  ReplicaSet.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: ObjectMeta.fromJson(json['metadata']),
          spec: json['spec'] != null
              ? ReplicaSetSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? ReplicaSetStatus.fromJson(json['status'])
              : null,
        );

  static List<ReplicaSet> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ReplicaSet.fromJson(e)).toList();
  }

  /// Gets or sets aPIVersion defines the versioned schema of this
  /// representation of an object. Servers should convert recognized
  /// schemas to the latest internal value, and may reject unrecognized
  /// values. More info:
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Gets or sets kind is a string value representing the REST resource
  /// this object represents. Servers may infer this from the endpoint
  /// the client submits requests to. Cannot be updated. In CamelCase.
  /// More info:
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Gets or sets if the Labels of a ReplicaSet are empty, they are
  /// defaulted to be the same as the Pod(s) that the ReplicaSet manages.
  /// Standard object's metadata. More info:
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta metadata;

  /// Gets or sets spec defines the specification of the desired behavior
  /// of the ReplicaSet. More info:
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final ReplicaSetSpec? spec;

  /// Gets or sets status is the most recently observed status of the
  /// ReplicaSet. This data may be out of date by some window of time.
  /// Populated by the system. Read-only. More info:
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final ReplicaSetStatus? status;
}
