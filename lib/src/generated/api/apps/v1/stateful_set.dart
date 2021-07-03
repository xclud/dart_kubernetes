import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/apps/v1/stateful_set_spec.dart';
import 'package:kubernetes/src/generated/api/apps/v1/stateful_set_status.dart';

/// StatefulSet represents a set of pods with consistent identities. Identities are defined as:
///  - Network: A single stable DNS and hostname.
///  - Storage: As many VolumeClaims as requested.
/// The StatefulSet guarantees that a given network identity will always map to the same storage identity.
class StatefulSet {
  /// The main constructor.
  const StatefulSet({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a StatefulSet from JSON data.
  StatefulSet.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? StatefulSetSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? StatefulSetStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of StatefulSet from JSON data.
  static List<StatefulSet> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StatefulSet.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Spec defines the desired identities of pods in this set.
  final StatefulSetSpec? spec;

  /// Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time.
  final StatefulSetStatus? status;
}
