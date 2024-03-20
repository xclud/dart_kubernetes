// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
class CinderVolumeSource {
  /// Default constructor.
  const CinderVolumeSource({
    this.fsType,
    this.readOnly,
    this.secretRef,
    required this.volumeID,
  });

  /// Creates a [CinderVolumeSource] from JSON data.
  factory CinderVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempFsTypeJson = json['fsType'];
    final tempReadOnlyJson = json['readOnly'];
    final tempSecretRefJson = json['secretRef'];
    final tempVolumeIDJson = json['volumeID'];

    final String? tempFsType = tempFsTypeJson;
    final bool? tempReadOnly = tempReadOnlyJson;
    final LocalObjectReference? tempSecretRef = tempSecretRefJson != null
        ? LocalObjectReference.fromJson(tempSecretRefJson)
        : null;
    final String tempVolumeID = tempVolumeIDJson;

    return CinderVolumeSource(
      fsType: tempFsType,
      readOnly: tempReadOnly,
      secretRef: tempSecretRef,
      volumeID: tempVolumeID,
    );
  }

  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md.
  final String? fsType;

  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md.
  final bool? readOnly;

  /// secretRef is optional: points to a secret object containing parameters used to connect to OpenStack.
  final LocalObjectReference? secretRef;

  /// volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md.
  final String volumeID;

  /// Converts a [CinderVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsType = fsType;
    final tempReadOnly = readOnly;
    final tempSecretRef = secretRef;
    final tempVolumeID = volumeID;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    if (tempSecretRef != null) {
      jsonData['secretRef'] = tempSecretRef.toJson();
    }

    jsonData['volumeID'] = tempVolumeID;

    return jsonData;
  }
}
