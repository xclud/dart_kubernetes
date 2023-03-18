// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a source location of a volume to mount, managed by an external CSI driver.
class CSIVolumeSource {
  /// Default constructor.
  const CSIVolumeSource({
    required this.driver,
    this.fsType,
    this.nodePublishSecretRef,
    this.readOnly,
    this.volumeAttributes,
  });

  /// Creates a [CSIVolumeSource] from JSON data.
  factory CSIVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempDriverJson = json['driver'];
    final tempFsTypeJson = json['fsType'];
    final tempNodePublishSecretRefJson = json['nodePublishSecretRef'];
    final tempReadOnlyJson = json['readOnly'];
    final tempVolumeAttributesJson = json['volumeAttributes'];

    final String tempDriver = tempDriverJson;
    final String? tempFsType = tempFsTypeJson;
    final LocalObjectReference? tempNodePublishSecretRef =
        tempNodePublishSecretRefJson != null
            ? LocalObjectReference.fromJson(tempNodePublishSecretRefJson)
            : null;
    final bool? tempReadOnly = tempReadOnlyJson;

    final Map<String, String>? tempVolumeAttributes =
        tempVolumeAttributesJson != null
            ? Map<String, String>.from(tempVolumeAttributesJson)
            : null;

    return CSIVolumeSource(
      driver: tempDriver,
      fsType: tempFsType,
      nodePublishSecretRef: tempNodePublishSecretRef,
      readOnly: tempReadOnly,
      volumeAttributes: tempVolumeAttributes,
    );
  }

  /// driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
  final String driver;

  /// fsType to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
  final String? fsType;

  /// nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed.
  final LocalObjectReference? nodePublishSecretRef;

  /// readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
  final bool? readOnly;

  /// volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
  final Map<String, String>? volumeAttributes;

  /// Converts a [CSIVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDriver = driver;
    final tempFsType = fsType;
    final tempNodePublishSecretRef = nodePublishSecretRef;
    final tempReadOnly = readOnly;
    final tempVolumeAttributes = volumeAttributes;

    jsonData['driver'] = tempDriver;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempNodePublishSecretRef != null) {
      jsonData['nodePublishSecretRef'] = tempNodePublishSecretRef.toJson();
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    if (tempVolumeAttributes != null) {
      jsonData['volumeAttributes'] = tempVolumeAttributes;
    }

    return jsonData;
  }
}
