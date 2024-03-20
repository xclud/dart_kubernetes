// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Represents storage that is managed by an external CSI volume driver (Beta feature).
class CSIPersistentVolumeSource {
  /// Default constructor.
  const CSIPersistentVolumeSource({
    this.controllerExpandSecretRef,
    this.controllerPublishSecretRef,
    required this.driver,
    this.fsType,
    this.nodeExpandSecretRef,
    this.nodePublishSecretRef,
    this.nodeStageSecretRef,
    this.readOnly,
    this.volumeAttributes,
    required this.volumeHandle,
  });

  /// Creates a [CSIPersistentVolumeSource] from JSON data.
  factory CSIPersistentVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempControllerExpandSecretRefJson = json['controllerExpandSecretRef'];
    final tempControllerPublishSecretRefJson =
        json['controllerPublishSecretRef'];
    final tempDriverJson = json['driver'];
    final tempFsTypeJson = json['fsType'];
    final tempNodeExpandSecretRefJson = json['nodeExpandSecretRef'];
    final tempNodePublishSecretRefJson = json['nodePublishSecretRef'];
    final tempNodeStageSecretRefJson = json['nodeStageSecretRef'];
    final tempReadOnlyJson = json['readOnly'];
    final tempVolumeAttributesJson = json['volumeAttributes'];
    final tempVolumeHandleJson = json['volumeHandle'];

    final SecretReference? tempControllerExpandSecretRef =
        tempControllerExpandSecretRefJson != null
            ? SecretReference.fromJson(tempControllerExpandSecretRefJson)
            : null;
    final SecretReference? tempControllerPublishSecretRef =
        tempControllerPublishSecretRefJson != null
            ? SecretReference.fromJson(tempControllerPublishSecretRefJson)
            : null;
    final String tempDriver = tempDriverJson;
    final String? tempFsType = tempFsTypeJson;
    final SecretReference? tempNodeExpandSecretRef =
        tempNodeExpandSecretRefJson != null
            ? SecretReference.fromJson(tempNodeExpandSecretRefJson)
            : null;
    final SecretReference? tempNodePublishSecretRef =
        tempNodePublishSecretRefJson != null
            ? SecretReference.fromJson(tempNodePublishSecretRefJson)
            : null;
    final SecretReference? tempNodeStageSecretRef =
        tempNodeStageSecretRefJson != null
            ? SecretReference.fromJson(tempNodeStageSecretRefJson)
            : null;
    final bool? tempReadOnly = tempReadOnlyJson;

    final Map<String, String>? tempVolumeAttributes =
        tempVolumeAttributesJson != null
            ? Map<String, String>.from(tempVolumeAttributesJson)
            : null;

    final String tempVolumeHandle = tempVolumeHandleJson;

    return CSIPersistentVolumeSource(
      controllerExpandSecretRef: tempControllerExpandSecretRef,
      controllerPublishSecretRef: tempControllerPublishSecretRef,
      driver: tempDriver,
      fsType: tempFsType,
      nodeExpandSecretRef: tempNodeExpandSecretRef,
      nodePublishSecretRef: tempNodePublishSecretRef,
      nodeStageSecretRef: tempNodeStageSecretRef,
      readOnly: tempReadOnly,
      volumeAttributes: tempVolumeAttributes,
      volumeHandle: tempVolumeHandle,
    );
  }

  /// controllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? controllerExpandSecretRef;

  /// controllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? controllerPublishSecretRef;

  /// driver is the name of the driver to use for this volume. Required.
  final String driver;

  /// fsType to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
  final String? fsType;

  /// nodeExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeExpandVolume call. This is a beta field which is enabled default by CSINodeExpandSecret feature gate. This field is optional, may be omitted if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? nodeExpandSecretRef;

  /// nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? nodePublishSecretRef;

  /// nodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? nodeStageSecretRef;

  /// readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
  final bool? readOnly;

  /// volumeAttributes of the volume to publish.
  final Map<String, String>? volumeAttributes;

  /// volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
  final String volumeHandle;

  /// Converts a [CSIPersistentVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempControllerExpandSecretRef = controllerExpandSecretRef;
    final tempControllerPublishSecretRef = controllerPublishSecretRef;
    final tempDriver = driver;
    final tempFsType = fsType;
    final tempNodeExpandSecretRef = nodeExpandSecretRef;
    final tempNodePublishSecretRef = nodePublishSecretRef;
    final tempNodeStageSecretRef = nodeStageSecretRef;
    final tempReadOnly = readOnly;
    final tempVolumeAttributes = volumeAttributes;
    final tempVolumeHandle = volumeHandle;

    if (tempControllerExpandSecretRef != null) {
      jsonData['controllerExpandSecretRef'] =
          tempControllerExpandSecretRef.toJson();
    }

    if (tempControllerPublishSecretRef != null) {
      jsonData['controllerPublishSecretRef'] =
          tempControllerPublishSecretRef.toJson();
    }

    jsonData['driver'] = tempDriver;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempNodeExpandSecretRef != null) {
      jsonData['nodeExpandSecretRef'] = tempNodeExpandSecretRef.toJson();
    }

    if (tempNodePublishSecretRef != null) {
      jsonData['nodePublishSecretRef'] = tempNodePublishSecretRef.toJson();
    }

    if (tempNodeStageSecretRef != null) {
      jsonData['nodeStageSecretRef'] = tempNodeStageSecretRef.toJson();
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    if (tempVolumeAttributes != null) {
      jsonData['volumeAttributes'] = tempVolumeAttributes;
    }

    jsonData['volumeHandle'] = tempVolumeHandle;

    return jsonData;
  }
}
