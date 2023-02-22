import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/resource_claim_spec.dart';

/// ResourceClaimTemplateSpec contains the metadata and fields for a ResourceClaim.
class ResourceClaimTemplateSpec {
  /// The main constructor.
  const ResourceClaimTemplateSpec({
    this.metadata,
    required this.spec,
  });

  /// Creates a ResourceClaimTemplateSpec from JSON data.
  ResourceClaimTemplateSpec.fromJson(Map<String, dynamic> json)
      : this(
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: ResourceClaimSpec.fromJson(json['spec']),
        );

  /// Creates a list of ResourceClaimTemplateSpec from JSON data.
  static List<ResourceClaimTemplateSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClaimTemplateSpec.fromJson(e)).toList();
  }

  /// Converts a ResourceClaimTemplateSpec instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    jsonData['spec'] = spec.toJson();
    

    return jsonData;
  }


  /// ObjectMeta may contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  final ObjectMeta? metadata;

  /// Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  final ResourceClaimSpec spec;
}
