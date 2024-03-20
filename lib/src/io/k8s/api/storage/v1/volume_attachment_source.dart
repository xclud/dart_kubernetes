// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../storage_v1.dart';

/// VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
class VolumeAttachmentSource {
  /// Default constructor.
  const VolumeAttachmentSource({
    this.inlineVolumeSpec,
    this.persistentVolumeName,
  });

  /// Creates a [VolumeAttachmentSource] from JSON data.
  factory VolumeAttachmentSource.fromJson(Map<String, dynamic> json) {
    final tempInlineVolumeSpecJson = json['inlineVolumeSpec'];
    final tempPersistentVolumeNameJson = json['persistentVolumeName'];

    final PersistentVolumeSpec? tempInlineVolumeSpec =
        tempInlineVolumeSpecJson != null
            ? PersistentVolumeSpec.fromJson(tempInlineVolumeSpecJson)
            : null;
    final String? tempPersistentVolumeName = tempPersistentVolumeNameJson;

    return VolumeAttachmentSource(
      inlineVolumeSpec: tempInlineVolumeSpec,
      persistentVolumeName: tempPersistentVolumeName,
    );
  }

  /// inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is beta-level and is only honored by servers that enabled the CSIMigration feature.
  final PersistentVolumeSpec? inlineVolumeSpec;

  /// persistentVolumeName represents the name of the persistent volume to attach.
  final String? persistentVolumeName;

  /// Converts a [VolumeAttachmentSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempInlineVolumeSpec = inlineVolumeSpec;
    final tempPersistentVolumeName = persistentVolumeName;

    if (tempInlineVolumeSpec != null) {
      jsonData['inlineVolumeSpec'] = tempInlineVolumeSpec.toJson();
    }

    if (tempPersistentVolumeName != null) {
      jsonData['persistentVolumeName'] = tempPersistentVolumeName;
    }

    return jsonData;
  }
}
