// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// PodTemplateSpec describes the data a pod should have when created from a template.
class PodTemplateSpec {
  /// Default constructor.
  const PodTemplateSpec({
    this.metadata,
    this.spec,
  });

  /// Creates a [PodTemplateSpec] from JSON data.
  factory PodTemplateSpec.fromJson(Map<String, dynamic> json) {
    final tempMetadataJson = json['metadata'];
    final tempSpecJson = json['spec'];

    final tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final tempSpec =
        tempSpecJson != null ? PodSpec.fromJson(tempSpecJson) : null;

    return PodTemplateSpec(
      metadata: tempMetadata,
      spec: tempSpec,
    );
  }

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final PodSpec? spec;

  /// Converts a [PodTemplateSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMetadata = metadata;
    final tempSpec = spec;

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempSpec != null) {
      jsonData['spec'] = tempSpec.toJson();
    }

    return jsonData;
  }
}
