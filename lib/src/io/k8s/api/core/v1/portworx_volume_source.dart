// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// PortworxVolumeSource represents a Portworx volume resource.
class PortworxVolumeSource {
  /// Default constructor.
  const PortworxVolumeSource({
    this.fsType,
    this.readOnly,
    required this.volumeID,
  });

  /// Creates a [PortworxVolumeSource] from JSON data.
  factory PortworxVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempFsTypeJson = json['fsType'];
    final tempReadOnlyJson = json['readOnly'];
    final tempVolumeIDJson = json['volumeID'];

    final String? tempFsType = tempFsTypeJson;
    final bool? tempReadOnly = tempReadOnlyJson;
    final String tempVolumeID = tempVolumeIDJson;

    return PortworxVolumeSource(
      fsType: tempFsType,
      readOnly: tempReadOnly,
      volumeID: tempVolumeID,
    );
  }

  /// fSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// volumeID uniquely identifies a Portworx volume.
  final String volumeID;

  /// Converts a [PortworxVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsType = fsType;
    final tempReadOnly = readOnly;
    final tempVolumeID = volumeID;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    jsonData['volumeID'] = tempVolumeID;

    return jsonData;
  }
}
