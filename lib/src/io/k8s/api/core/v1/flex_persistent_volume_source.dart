// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
class FlexPersistentVolumeSource {
  /// Default constructor.
  const FlexPersistentVolumeSource({
    required this.driver,
    this.fsType,
    this.options,
    this.readOnly,
    this.secretRef,
  });

  /// Creates a [FlexPersistentVolumeSource] from JSON data.
  factory FlexPersistentVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempDriverJson = json['driver'];
    final tempFsTypeJson = json['fsType'];
    final tempOptionsJson = json['options'];
    final tempReadOnlyJson = json['readOnly'];
    final tempSecretRefJson = json['secretRef'];

    final String tempDriver = tempDriverJson;
    final String? tempFsType = tempFsTypeJson;

    final Map<String, String>? tempOptions = tempOptionsJson != null
        ? Map<String, String>.from(tempOptionsJson)
        : null;

    final bool? tempReadOnly = tempReadOnlyJson;
    final SecretReference? tempSecretRef = tempSecretRefJson != null
        ? SecretReference.fromJson(tempSecretRefJson)
        : null;

    return FlexPersistentVolumeSource(
      driver: tempDriver,
      fsType: tempFsType,
      options: tempOptions,
      readOnly: tempReadOnly,
      secretRef: tempSecretRef,
    );
  }

  /// driver is the name of the driver to use for this volume.
  final String driver;

  /// fsType is the Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
  final String? fsType;

  /// options is Optional: this field holds extra command options if any.
  final Map<String, String>? options;

  /// readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// secretRef is Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  final SecretReference? secretRef;

  /// Converts a [FlexPersistentVolumeSource] instance to JSON data.
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

    if (tempOptions != null) {
      jsonData['options'] = tempOptions;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    if (tempSecretRef != null) {
      jsonData['secretRef'] = tempSecretRef.toJson();
    }

    return jsonData;
  }
}
