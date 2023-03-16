// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.
class FlexVolumeSource {
  /// Default constructor.
  const FlexVolumeSource({
    required this.driver,
    this.fsType,
    this.options = const {},
    this.readOnly,
    this.secretRef,
  });

  /// Creates a [FlexVolumeSource] from JSON data.
  factory FlexVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempDriverJson = json['driver'];
    final tempFsTypeJson = json['fsType'];
    final tempOptionsJson = json['options'];
    final tempReadOnlyJson = json['readOnly'];
    final tempSecretRefJson = json['secretRef'];

    final String tempDriver = tempDriverJson;
    final String? tempFsType = tempFsTypeJson;
    final Map<String, String> tempOptions = tempOptionsJson;
    final bool? tempReadOnly = tempReadOnlyJson;
    final LocalObjectReference? tempSecretRef = tempSecretRefJson != null
        ? LocalObjectReference.fromJson(tempSecretRefJson)
        : null;

    return FlexVolumeSource(
      driver: tempDriver,
      fsType: tempFsType,
      options: tempOptions,
      readOnly: tempReadOnly,
      secretRef: tempSecretRef,
    );
  }

  /// driver is the name of the driver to use for this volume.
  final String driver;

  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
  final String? fsType;

  /// options is Optional: this field holds extra command options if any.
  final Map<String, String> options;

  /// readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// secretRef is Optional: secretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  final LocalObjectReference? secretRef;

  /// Converts a [FlexVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDriver = driver;
    final tempFsType = fsType;
    final tempOptions = options;
    final tempReadOnly = readOnly;
    final tempSecretRef = secretRef;

    jsonData['driver'] = tempDriver;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    jsonData['options'] = tempOptions;

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    if (tempSecretRef != null) {
      jsonData['secretRef'] = tempSecretRef.toJson();
    }

    return jsonData;
  }
}
