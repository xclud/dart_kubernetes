import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/resource_claim_template_spec.dart';

/// ResourceClaimTemplate is used to produce ResourceClaim objects.
class ResourceClaimTemplate {
  /// The main constructor.
  const ResourceClaimTemplate({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
  });

  /// Creates a ResourceClaimTemplate from JSON data.
  ResourceClaimTemplate.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: ResourceClaimTemplateSpec.fromJson(json['spec']),
        );

  /// Creates a list of ResourceClaimTemplate from JSON data.
  static List<ResourceClaimTemplate> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClaimTemplate.fromJson(e)).toList();
  }

  /// Converts a ResourceClaimTemplate instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    jsonData['spec'] = spec.toJson();
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object metadata.
  final ObjectMeta? metadata;

  /// Describes the ResourceClaim that is to be generated.
/// 
/// This field is immutable. A ResourceClaim will get created by the control plane for a Pod when needed and then not get updated anymore.
  final ResourceClaimTemplateSpec spec;
}
