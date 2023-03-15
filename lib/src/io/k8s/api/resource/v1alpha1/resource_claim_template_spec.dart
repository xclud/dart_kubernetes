// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.resource.v1alpha1;

/// ResourceClaimTemplateSpec contains the metadata and fields for a ResourceClaim.
class ResourceClaimTemplateSpec {
  /// Default constructor.
  const ResourceClaimTemplateSpec({
    this.metadata,
    required this.spec,
  });

  /// Creates a [ResourceClaimTemplateSpec] from JSON data.
  factory ResourceClaimTemplateSpec.fromJson(Map<String, dynamic> json) {
    final tempMetadataJson = json['metadata'];
    final tempSpecJson = json['spec'];

    final tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final tempSpec = ResourceClaimSpec.fromJson(tempSpecJson);

    return ResourceClaimTemplateSpec(
      metadata: tempMetadata,
      spec: tempSpec,
    );
  }

  /// ObjectMeta may contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  final ObjectMeta? metadata;

  /// Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  final ResourceClaimSpec spec;

  /// Converts a [ResourceClaimTemplateSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMetadata = metadata;
    final tempSpec = spec;

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    jsonData['spec'] = tempSpec.toJson();

    return jsonData;
  }
}
