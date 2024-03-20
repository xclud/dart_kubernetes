part of '../../../../istio_v1beta1.dart';

/// Workload entry.
class WorkloadEntry {
  /// The main constructor.
  const WorkloadEntry({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a WorkloadEntry from JSON data.
  WorkloadEntry.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? WorkloadEntrySpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? WorkloadEntryStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of WorkloadEntry from JSON data.
  static List<WorkloadEntry> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => WorkloadEntry.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Spec defines the desired identities of object.
  final WorkloadEntrySpec? spec;

  /// Status is the current status of this object.
  final WorkloadEntryStatus? status;
}
