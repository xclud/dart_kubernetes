import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/resource_claim_spec.dart';
import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/resource_claim_status.dart';

/// ResourceClaim describes which resources are needed by a resource consumer. Its status tracks whether the resource has been allocated and what the resulting attributes are.
/// 
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClaim {
  /// The main constructor.
  const ResourceClaim({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a ResourceClaim from JSON data.
  ResourceClaim.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: ResourceClaimSpec.fromJson(json['spec']),
          status: json['status'] != null ? ResourceClaimStatus.fromJson(json['status']): null,
        );

  /// Creates a list of ResourceClaim from JSON data.
  static List<ResourceClaim> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClaim.fromJson(e)).toList();
  }

  /// Converts a ResourceClaim instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    jsonData['spec'] = spec.toJson();
    if(status != null) { jsonData['status'] = status!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object metadata.
  final ObjectMeta? metadata;

  /// Spec describes the desired attributes of a resource that then needs to be allocated. It can only be set once when creating the ResourceClaim.
  final ResourceClaimSpec spec;

  /// Status describes whether the resource is available and with which attributes.
  final ResourceClaimStatus? status;
}
