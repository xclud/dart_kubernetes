// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of an EphemeralVolumeSource.
class PersistentVolumeClaimTemplate {
  /// Default constructor.
  const PersistentVolumeClaimTemplate({
    this.metadata,
    required this.spec,
  });

  /// Creates a [PersistentVolumeClaimTemplate] from JSON data.
  factory PersistentVolumeClaimTemplate.fromJson(Map<String, dynamic> json) {
    final tempMetadataJson = json['metadata'];
    final tempSpecJson = json['spec'];

    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final PersistentVolumeClaimSpec tempSpec =
        PersistentVolumeClaimSpec.fromJson(tempSpecJson);

    return PersistentVolumeClaimTemplate(
      metadata: tempMetadata,
      spec: tempSpec,
    );
  }

  /// May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  final ObjectMeta? metadata;

  /// The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
  final PersistentVolumeClaimSpec spec;

  /// Converts a [PersistentVolumeClaimTemplate] instance to JSON data.
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
