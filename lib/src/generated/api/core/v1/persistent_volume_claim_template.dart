import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/core/v1/persistent_volume_claim_spec.dart';

/// PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of an EphemeralVolumeSource.
class PersistentVolumeClaimTemplate {
  /// The main constructor.
  const PersistentVolumeClaimTemplate({
    this.metadata,
    required this.spec,
  });

  /// Creates a PersistentVolumeClaimTemplate from JSON data.
  PersistentVolumeClaimTemplate.fromJson(Map<String, dynamic> json)
      : this(
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: PersistentVolumeClaimSpec.fromJson(json['spec']),
        );

  /// Creates a list of PersistentVolumeClaimTemplate from JSON data.
  static List<PersistentVolumeClaimTemplate> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PersistentVolumeClaimTemplate.fromJson(e)).toList();
  }

  /// May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  final ObjectMeta? metadata;

  /// The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
  final PersistentVolumeClaimSpec spec;
}
