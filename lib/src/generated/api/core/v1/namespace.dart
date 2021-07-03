import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/core/v1/namespace_spec.dart';
import 'package:kubernetes/src/generated/api/core/v1/namespace_status.dart';

/// Namespace provides a scope for Names. Use of multiple namespaces is optional.
class Namespace {
  /// The main constructor.
  const Namespace({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a Namespace from JSON data.
  Namespace.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? NamespaceSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? NamespaceStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of Namespace from JSON data.
  static List<Namespace> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Namespace.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Spec defines the behavior of the Namespace. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final NamespaceSpec? spec;

  /// Status describes the current status of a Namespace. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final NamespaceStatus? status;
}
