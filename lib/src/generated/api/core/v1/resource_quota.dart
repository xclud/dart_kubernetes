import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/core/v1/resource_quota_spec.dart';
import 'package:kubernetes/src/generated/api/core/v1/resource_quota_status.dart';

/// ResourceQuota sets aggregate quota restrictions enforced per namespace.
class ResourceQuota {
  /// The main constructor.
  const ResourceQuota({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a ResourceQuota from JSON data.
  ResourceQuota.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? ResourceQuotaSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? ResourceQuotaStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of ResourceQuota from JSON data.
  static List<ResourceQuota> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceQuota.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec defines the desired quota. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final ResourceQuotaSpec? spec;

  /// Status defines the actual enforced quota and its current usage. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final ResourceQuotaStatus? status;
}
