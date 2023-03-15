import 'package:kubernetes/io_k8s_apimachinery_pkg_apis_meta_v1.dart';

import '_todo.dart';

/// Telemetry.
class Telemetry {
  /// The main constructor.
  const Telemetry({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a Telemetry from JSON data.
  Telemetry.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? TelemetrySpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? TelemetryStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of Telemetry from JSON data.
  static List<Telemetry> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Telemetry.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Spec defines the desired identities of object.
  final TelemetrySpec? spec;

  /// Status is the current status of this object.
  final TelemetryStatus? status;
}
