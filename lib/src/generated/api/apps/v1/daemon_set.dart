import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/apps/v1/daemon_set_spec.dart';
import 'package:kubernetes/src/generated/api/apps/v1/daemon_set_status.dart';

/// DaemonSet represents the configuration of a daemon set.
class DaemonSet {
  /// The main constructor.
  const DaemonSet({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a DaemonSet from JSON data.
  DaemonSet.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? DaemonSetSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? DaemonSetStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of DaemonSet from JSON data.
  static List<DaemonSet> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DaemonSet.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// The desired behavior of this daemon set. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final DaemonSetSpec? spec;

  /// The current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final DaemonSetStatus? status;
}
