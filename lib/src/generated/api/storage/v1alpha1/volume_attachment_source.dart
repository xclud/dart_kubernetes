import 'package:kubernetes/src/generated/api/core/v1/persistent_volume_spec.dart';

/// VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
class VolumeAttachmentSource {
  /// The main constructor.
  const VolumeAttachmentSource({
    this.inlineVolumeSpec,
    this.persistentVolumeName,
  });

  /// Creates a VolumeAttachmentSource from JSON data.
  VolumeAttachmentSource.fromJson(Map<String, dynamic> json)
      : this(
          inlineVolumeSpec: json['inlineVolumeSpec'] != null
              ? PersistentVolumeSpec.fromJson(json['inlineVolumeSpec'])
              : null,
          persistentVolumeName: json['persistentVolumeName'],
        );

  /// Creates a list of VolumeAttachmentSource from JSON data.
  static List<VolumeAttachmentSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeAttachmentSource.fromJson(e)).toList();
  }

  /// inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is alpha-level and is only honored by servers that enabled the CSIMigration feature.
  final PersistentVolumeSpec? inlineVolumeSpec;

  /// Name of the persistent volume to attach.
  final String? persistentVolumeName;
}
