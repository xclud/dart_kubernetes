part of '../../../../istio_v1beta1.dart';

/// Configuration affecting traffic routing.
class VirtualService {
  /// The main constructor.
  const VirtualService({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a VirtualService from JSON data.
  VirtualService.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? VirtualServiceSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? VirtualServiceStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of VirtualService from JSON data.
  static List<VirtualService> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VirtualService.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// Spec defines the desired identities of object.
  final VirtualServiceSpec? spec;

  /// Status is the current status of this object.
  final VirtualServiceStatus? status;
}
