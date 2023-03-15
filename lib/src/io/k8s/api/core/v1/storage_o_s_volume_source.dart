// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a StorageOS persistent volume resource.
class StorageOSVolumeSource {
  /// Default constructor.
  const StorageOSVolumeSource({
    this.fsType,
    this.readOnly,
    this.secretRef,
    this.volumeName,
    this.volumeNamespace,
  });

  /// Creates a [StorageOSVolumeSource] from JSON data.
  factory StorageOSVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempFsTypeJson = json['fsType'];
    final tempReadOnlyJson = json['readOnly'];
    final tempSecretRefJson = json['secretRef'];
    final tempVolumeNameJson = json['volumeName'];
    final tempVolumeNamespaceJson = json['volumeNamespace'];

    final tempFsType = tempFsTypeJson;
    final tempReadOnly = tempReadOnlyJson;
    final tempSecretRef = tempSecretRefJson != null
        ? LocalObjectReference.fromJson(tempSecretRefJson)
        : null;
    final tempVolumeName = tempVolumeNameJson;
    final tempVolumeNamespace = tempVolumeNamespaceJson;

    return StorageOSVolumeSource(
      fsType: tempFsType,
      readOnly: tempReadOnly,
      secretRef: tempSecretRef,
      volumeName: tempVolumeName,
      volumeNamespace: tempVolumeNamespace,
    );
  }

  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted.
  final LocalObjectReference? secretRef;

  /// volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
  final String? volumeName;

  /// volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to "default" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
  final String? volumeNamespace;

  /// Converts a [StorageOSVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsType = fsType;
    final tempReadOnly = readOnly;
    final tempSecretRef = secretRef;
    final tempVolumeName = volumeName;
    final tempVolumeNamespace = volumeNamespace;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    if (tempSecretRef != null) {
      jsonData['secretRef'] = tempSecretRef.toJson();
    }

    if (tempVolumeName != null) {
      jsonData['volumeName'] = tempVolumeName;
    }

    if (tempVolumeNamespace != null) {
      jsonData['volumeNamespace'] = tempVolumeNamespace;
    }

    return jsonData;
  }
}
